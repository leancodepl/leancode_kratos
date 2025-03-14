import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/common/api/settings_flow_dto.dart';
import 'package:leancode_kratos_client/src/common/api/verification_flow_dto.dart';
import 'package:leancode_kratos_client/src/login/api/login_error.dart'
    as login_error;
import 'package:leancode_kratos_client/src/login/api/login_success.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_success.dart';
import 'package:leancode_kratos_client/src/registration/api/token_exchange_success.dart';
import 'package:leancode_kratos_client/src/utils/create_client.dart'
    if (dart.library.js_interop) 'package:leancode_kratos_client/src/utils/create_browser_client.dart';
import 'package:logging/logging.dart';

typedef BrowserCallback = Future<String> Function(String url);
typedef SdkCallback = Future<SdkResult> Function();
typedef PasskeyCallback = Future<PasskeyCallbackResult> Function(
  Map<String, dynamic> creationOptions,
);

class KratosClient {
  KratosClient({
    required Uri baseUri,
    CredentialsStorage? credentialsStorage,
    http.Client? httpClient,
  })  : _baseUri = baseUri,
        _credentialsStorage =
            credentialsStorage ?? const FlutterSecureCredentialsStorage(),
        _client = httpClient ?? createHttpClient();

  final Uri _baseUri;
  final CredentialsStorage _credentialsStorage;
  final http.Client _client;
  final Logger _logger = Logger('KratosClientLogger');
  static const _commonHeaders = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };

  String get _flowType => kIsWeb ? 'browser' : 'api';

  Future<AuthFlowDto?> _initRegistrationFlow({
    required bool returnSessionTokenExchangeCode,
    String? returnTo,
  }) async {
    return _initAuthFlow(
      path: 'self-service/registration/$_flowType',
      returnSessionTokenExchangeCode: returnSessionTokenExchangeCode,
      returnTo: returnTo,
      refresh: false,
    );
  }

  Future<AuthFlowDto?> _initLoginFlow({
    bool returnSessionTokenExchangeCode = true,
    required String? returnTo,
    required bool refresh,
  }) async {
    return _initAuthFlow(
      path: 'self-service/login/$_flowType',
      returnSessionTokenExchangeCode: returnSessionTokenExchangeCode,
      returnTo: returnTo,
      refresh: refresh,
    );
  }

  Future<AuthFlowDto?> _initAuthFlow({
    required String path,
    required bool returnSessionTokenExchangeCode,
    required String? returnTo,
    required bool refresh,
  }) async {
    try {
      final registrationFlow = await _client.get(
        _buildUri(
          path: path,
          queryParameters: {
            if (returnSessionTokenExchangeCode)
              'return_session_token_exchange_code': 'true',
            if (returnTo != null) 'return_to': returnTo,
            if (refresh) 'refresh': 'true',
          },
        ),
        headers: _commonHeaders,
      );

      return AuthFlowDto.fromString(registrationFlow.body);
    } catch (e, st) {
      _logger.warning('Error initializing auth flow', e, st);
      return null;
    }
  }

  Future<AuthFlowDto?> _getRegistrationFlow(String id) async {
    return _getAuthFlow(
      path: 'self-service/registration/flows',
      id: id,
    );
  }

  Future<AuthFlowDto?> _getAuthFlow({
    required String path,
    required String id,
  }) async {
    try {
      final registrationFlow = await _client.get(
        _buildUri(
          path: path,
          queryParameters: {'id': id},
        ),
      );
      return AuthFlowDto.fromString(registrationFlow.body);
    } catch (e, st) {
      _logger.warning('Error getting auth flow', e, st);
      return null;
    }
  }

  Future<RegistrationResult> registerWithPassword({
    required String password,
    Map<String, dynamic> traits = const <String, dynamic>{},
  }) async {
    final flow =
        await _initRegistrationFlow(returnSessionTokenExchangeCode: false);

    if (flow == null) {
      return const RegistrationUnknownErrorResult();
    }

    try {
      final response = await _client.post(
        _buildUri(
          path: 'self-service/registration',
          queryParameters: {'flow': flow.id},
        ),
        headers: _commonHeaders,
        body: jsonEncode(
          {
            'method': 'password',
            'csrf_token': flow.csrfToken,
            'password': password,
            'traits': traits,
          },
        ),
      );

      if (response.statusCode == 400) {
        return _handleErrorResponse(response);
      } else if (response.statusCode == 200) {
        return _handleSuccessResponse(response);
      }

      return const RegistrationUnknownErrorResult();
    } catch (e, st) {
      _logger.severe('Error completing registration flow', e, st);
      return const RegistrationUnknownErrorResult();
    }
  }

  Future<RegistrationResult> registerWithOidc({
    required OidcProvider provider,
    required String returnTo,
    required BrowserCallback browserCallback,
    SdkCallback? appleSdkCallback,
    SdkCallback? googleSdkCallback,
    Map<String, dynamic> traits = const <String, dynamic>{},
    AuthFlowInfo? flowInfo,
    String? idToken,
  }) async {
    final AuthFlowInfo? effectiveFlowInfo;

    if (flowInfo != null) {
      effectiveFlowInfo = flowInfo;
    } else {
      final newFlow = await _initRegistrationFlow(
        returnSessionTokenExchangeCode: true,
        returnTo: returnTo,
      );

      effectiveFlowInfo = newFlow?.info;
    }

    if (effectiveFlowInfo == null) {
      return const RegistrationUnknownErrorResult();
    }

    var effectiveIdToken = idToken;
    var effectiveTraits = traits;

    if (effectiveIdToken == null) {
      SdkResult? sdkResult;

      if (Platform.isAndroid &&
          provider == OidcProvider.google &&
          googleSdkCallback != null) {
        sdkResult = await googleSdkCallback();
      } else if (Platform.isIOS &&
          provider == OidcProvider.apple &&
          appleSdkCallback != null) {
        sdkResult = await appleSdkCallback();
      }

      if (sdkResult != null) {
        switch (sdkResult) {
          case SdkCancelledResult():
            return const RegistrationCancelledResult();
          case SdkErrorResult():
            return const RegistrationUnknownErrorResult();
          case SdkSuccessResult():
        }

        effectiveIdToken = sdkResult.idToken;
        effectiveTraits = <String, dynamic>{
          ...effectiveTraits,
          ...sdkResult.traits,
        };
      }
    }

    try {
      final streamedResponse = await _client.send(
        http.Request(
          'POST',
          _buildUri(
            path: 'self-service/registration',
            queryParameters: {'flow': effectiveFlowInfo.id},
          ),
        )
          ..headers.addAll(_commonHeaders)
          ..body = jsonEncode(
            {
              'method': 'oidc',
              'provider': provider.name,
              'id_token': effectiveIdToken,
              'csrf_token': effectiveFlowInfo.csrfToken,
              'traits': effectiveTraits,
            },
          )
          ..followRedirects = false,
      );

      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 400) {
        return _handleErrorResponse(response);
      } else if (response.statusCode == 200) {
        return _handleSuccessResponse(response);
      } else if (response.statusCode == 422) {
        return await _handleBrowserLocationChangeRequiredResponse(
          response: response,
          info: effectiveFlowInfo,
          browserCallback: browserCallback,
        );
      } else if (response.statusCode == 303) {
        return await _handleRedirectResponse(
          response: response,
          info: effectiveFlowInfo,
          idToken: effectiveIdToken,
          traits: effectiveTraits,
        );
      }

      return const RegistrationUnknownErrorResult();
    } catch (e, st) {
      _logger.severe('Error completing registration flow', e, st);
      return const RegistrationUnknownErrorResult();
    }
  }

  /// [registerWithProfile] is used in a multi step registration flow that requires
  /// users to provide basic information first, and complete the registration process
  /// and set a password or a passkey at the end.
  Future<RegistrationResult> registerWithProfile({
    Map<String, dynamic> traits = const <String, dynamic>{},
  }) async {
    final flow =
        await _initRegistrationFlow(returnSessionTokenExchangeCode: false);

    if (flow == null) {
      return const RegistrationUnknownErrorResult();
    }

    try {
      final response = await _client.post(
        _buildUri(
          path: 'self-service/registration',
          queryParameters: {'flow': flow.id},
        ),
        headers: _commonHeaders,
        body: jsonEncode(
          {
            'method': 'profile',
            'csrf_token': flow.csrfToken,
            'traits': traits,
          },
        ),
      );

      if (response.statusCode == 410 || response.statusCode == 422) {
        return _handleErrorResponse(response);
      } else if (response.statusCode == 200 || response.statusCode == 400) {
        return _handleSuccessResponse(response);
      }

      return const RegistrationUnknownErrorResult();
    } catch (e, st) {
      _logger.severe('Error completing registration flow', e, st);
      return const RegistrationUnknownErrorResult();
    }
  }

  RegistrationResult _handleErrorResponse(http.Response response) {
    final dto = AuthFlowDto.fromString(response.body);
    return mapRegistrationErrorResponse(dto);
  }

  KratosMessage? _handleChangePasswordError(http.Response response) {
    final dto = AuthFlowDto.fromString(response.body);
    final nodes = dto.ui.nodes;
    final errors = nodes
        .map((node) {
          return switch ((node.attributes.name, node.messages)) {
            (final attributeName?, [MessageDto(:final id), ...]) => (
                attributeName,
                KratosMessage.forId(id),
              ),
            _ => null
          };
        })
        .nonNulls
        .toList();
    return errors.firstOrNull?.$2;
  }

  Future<RegistrationResult> _handleSuccessResponse(
    http.Response response,
  ) async {
    final decodedResponse =
        RegistrationSuccessResponse.fromString(response.body);
    final result = mapRegistrationSuccessResponse(decodedResponse);

    if ((decodedResponse.sessionToken, decodedResponse.session)
        case (final sessionToken?, final session?)
        when result is RegistrationSuccessResult) {
      await _credentialsStorage.save(
        credentials: sessionToken,
        expirationDate: session.expiresAt.toString(),
      );
    }

    return result;
  }

  Future<RegistrationResult> _handleBrowserLocationChangeRequiredResponse({
    required http.Response response,
    required AuthFlowInfo info,
    required BrowserCallback browserCallback,
  }) async {
    final browserLocationChangeRequiredResponse =
        RegistrationBrowserLocationChangeRequiredResponse.fromString(
      response.body,
    );

    final redirectBrowserTo =
        browserLocationChangeRequiredResponse.redirectBrowserTo;

    if (redirectBrowserTo == null) {
      return const RegistrationUnknownErrorResult();
    }

    final result = await browserCallback(redirectBrowserTo);

    final returnToCode = Uri.parse(result).queryParameters['code'];
    final initCode = info.sessionTokenExchangeCode;

    if (initCode == null) {
      return const RegistrationUnknownErrorResult();
    }

    if (returnToCode == null) {
      final newFlow = await _getRegistrationFlow(info.id);

      if (newFlow == null) {
        return const RegistrationUnknownErrorResult();
      }

      return mapRegistrationErrorResponse(
        newFlow.copyWith(sessionTokenExchangeCode: initCode),
      );
    }

    return _exchangeSessionToken(initCode, returnToCode);
  }

  Future<RegistrationResult> _handleRedirectResponse({
    required http.Response response,
    required AuthFlowInfo info,
    required String? idToken,
    required Map<String, dynamic> traits,
  }) async {
    final location = response.headers['location'];

    if (location == null) {
      return const RegistrationUnknownErrorResult();
    }

    final returnToCode = Uri.parse(location).queryParameters['code'];
    final initCode = info.sessionTokenExchangeCode;

    if (initCode != null && returnToCode != null) {
      return _exchangeSessionToken(initCode, returnToCode);
    }

    if (initCode != null && idToken != null) {
      return RegistrationSocialFinishResult(
        flowInfo: info,
        idToken: idToken,
        values: traits.entries
            .map((entry) => ('traits.${entry.key}', entry.value))
            .toList(),
      );
    }

    return const RegistrationUnknownErrorResult();
  }

  Future<RegistrationResult> _exchangeSessionToken(
    String initCode,
    String returnToCode,
  ) async {
    final response = await _client.get(
      _buildUri(
        path: 'sessions/token-exchange',
        queryParameters: {
          'init_code': initCode,
          'return_to_code': returnToCode,
        },
      ),
    );

    if (response.statusCode == 200) {
      final parsedResponse = TokenExchangeSuccess.fromString(response.body);

      await _credentialsStorage.save(
        credentials: parsedResponse.sessionToken,
        expirationDate: parsedResponse.session.expiresAt.toString(),
      );

      return const RegistrationSuccessResult();
    } else {
      return const RegistrationUnknownErrorResult();
    }
  }

  Future<LoginResult> loginWithPassword(
    String email,
    String password, {
    AuthFlowInfo? flowInfo,
    bool refresh = false,
  }) async {
    try {
      final AuthFlowInfo? effectiveFlowInfo;

      if (flowInfo != null) {
        effectiveFlowInfo = flowInfo;
      } else {
        final newFlow = await _initLoginFlow(
          returnSessionTokenExchangeCode: false,
          returnTo: null,
          refresh: refresh,
        );

        effectiveFlowInfo = newFlow?.info;
      }

      if (effectiveFlowInfo == null) {
        return const LoginUnknownErrorResult();
      }

      final loginFlowResult = await _client.post(
        _buildUri(
          path: 'self-service/login',
          queryParameters: {'flow': effectiveFlowInfo.id},
        ),
        headers: _commonHeaders,
        body: jsonEncode(
          {
            'method': 'password',
            'identifier': email,
            'password': password,
            if (effectiveFlowInfo.csrfToken case final csrfToken?)
              'csrf_token': csrfToken,
          },
        ),
      );

      if (loginFlowResult.statusCode == 200) {
        final loginResult = loginSuccessResponseFromJson(loginFlowResult.body);
        await _credentialsStorage.save(
          credentials: loginResult.sessionToken,
          expirationDate: loginResult.session.expiresAt.toString(),
        );
        return const LoginSuccessResult();
      } else if (loginFlowResult.statusCode == 400) {
        final errorLoginResult =
            login_error.loginErrorResponseFromJson(loginFlowResult.body);
        final generalErrors = errorLoginResult.ui.getGeneralMessages();

        if (generalErrors
            .contains(KratosMessage.errorValidationAddressNotVerified)) {
          return LoginVerifyEmailResult(
            flowId: effectiveFlowInfo.id,
            emailToVerify: email,
          );
        }

        final fieldErrors = errorLoginResult.ui.getFieldMessages();

        if (generalErrors.isNotEmpty || fieldErrors.isNotEmpty) {
          return LoginErrorResult(
            generalErrors: generalErrors,
            fieldErrors: fieldErrors,
          );
        }

        return const LoginUnknownErrorResult();
      }

      return const LoginUnknownErrorResult();
    } catch (e, st) {
      _logger.warning('Login failed.', e, st);

      return const LoginUnknownErrorResult();
    }
  }

  Future<PasskeyLoginResult> loginWithPasskey({
    required PasskeyCallback passkeyCallback,
    bool refresh = false,
  }) async {
    try {
      final flow = await _initLoginFlow(
        returnSessionTokenExchangeCode: false,
        returnTo: null,
        refresh: refresh,
      );

      if (flow == null) {
        return const PasskeyLoginUnknownErrorResult();
      }

      final passkeyRequestOptions = flow.info.passkeyRequestOptions;
      if (passkeyRequestOptions == null) {
        return const PasskeyLoginUnknownErrorResult();
      }

      final credentialResult = await passkeyCallback(
        passkeyRequestOptions,
      );

      String credentialJson;
      switch (credentialResult) {
        case PasskeyCallbackSuccessResult(:final publicKeyJson):
          credentialJson = publicKeyJson;
        case PasskeyCallbackCancelledResult():
          return const PasskeyLoginCancelledResult();
        case PasskeyCallbackErrorResult():
          return const PasskeyLoginPasskeyErrorResult();
      }

      final loginResponse = await _client.post(
        _buildUri(
          path: 'self-service/login',
          queryParameters: {'flow': flow.id},
        ),
        headers: _commonHeaders,
        body: jsonEncode(
          {
            'method': 'passkey',
            'csrf_token': flow.csrfToken,
            'passkey_login': credentialJson,
          },
        ),
      );

      switch (loginResponse.statusCode) {
        case 200:
          final loginResult = loginSuccessResponseFromJson(loginResponse.body);
          await _credentialsStorage.save(
            credentials: loginResult.sessionToken,
            expirationDate: loginResult.session.expiresAt.toString(),
          );
          return const PasskeyLoginSuccessResult();
        case 400:
          final errorLoginResult =
              login_error.loginErrorResponseFromJson(loginResponse.body);
          final generalErrors = errorLoginResult.ui.getGeneralMessages();

          if (generalErrors
              .contains(KratosMessage.errorValidationAddressNotVerified)) {
            return PasskeyLoginVerifyEmailResult(
              flowId: flow.id,
            );
          }

          if (generalErrors.isNotEmpty) {
            return PasskeyLoginErrorResult(
              generalErrors: generalErrors,
            );
          }

          return const PasskeyLoginUnknownErrorResult();
        default:
          return const PasskeyLoginUnknownErrorResult();
      }
    } catch (e, st) {
      _logger.warning('Login with passkey failed.', e, st);

      return const PasskeyLoginUnknownErrorResult();
    }
  }

  /// NOTE: logout always clears credential storage. The result is regarding the
  /// server logout notification which is executed on a best effort basis
  Future<LogoutResult> logout() async {
    final sessionToken = await _credentialsStorage.read();
    await _credentialsStorage.clear();

    if (!kIsWeb && sessionToken == null) {
      return const LogoutUnknownErrorResult();
    }

    try {
      final logoutResult = await _client.delete(
        _buildUri(path: 'self-service/logout/$_flowType'),
        headers: _commonHeaders,
        body: jsonEncode({'session_token': sessionToken}),
      );

      if (logoutResult.statusCode == 204) {
        return const LogoutSuccessResult();
      } else {
        return const LogoutUnknownErrorResult();
      }
    } catch (e, st) {
      _logger.warning('Logout failed.', e, st);

      return const LogoutUnknownErrorResult();
    }
  }

  Future<VerificationResult> verifyAccount({
    required String flowId,
    required String code,
  }) async {
    try {
      final response = await _client.post(
        _buildUri(
          path: 'self-service/verification',
          queryParameters: {
            'code': code,
            'flow': flowId,
          },
        ),
        headers: _commonHeaders,
        body: jsonEncode({'method': 'code'}),
      );

      if (response.statusCode == 200) {
        final resultFlow = VerificationFlowDto.fromString(response.body);

        if (resultFlow.state != 'passed_challenge') {
          return const VerificationUnknownErrorResult();
        }

        return const VerificationSuccessResult();
      } else if (response.statusCode == 400) {
        final resultFlow = VerificationFlowDto.fromString(response.body);

        return VerificationErrorResult(
          generalErrors: resultFlow.ui.getGeneralMessages(),
          fieldErrors: resultFlow.ui.getFieldMessages(),
        );
      } else if (response.statusCode == 403) {
        return const VerificationFlowExpiredResult();
      }

      return const VerificationUnknownErrorResult();
    } catch (e, st) {
      _logger.warning('Error completing verification', e, st);

      return const VerificationUnknownErrorResult();
    }
  }

  /// getNewVerificationFlow
  /// Use when old verification flow expired / verification flow interrupted on mobile
  Future<VerificationFlowDto?> getNewVerificationFlow(String email) async {
    final verificationFlow = await getVerificationFlow();

    if (verificationFlow == null) {
      return null;
    }

    try {
      final response = await _client.post(
        _buildUri(
          path: 'self-service/verification',
          queryParameters: {'flow': verificationFlow.id},
        ),
        headers: _commonHeaders,
        body: jsonEncode(
          {
            'email': email,
            'method': 'code',
          },
        ),
      );

      if (response.statusCode != 200) {
        return null;
      }

      final postedVerificationFlow =
          VerificationFlowDto.fromString(response.body);

      if (postedVerificationFlow.state != 'sent_email') {
        return null;
      }

      return postedVerificationFlow;
    } catch (e, st) {
      _logger.warning('Error getting verification flow', e, st);

      return null;
    }
  }

  Future<VerificationFlowDto?> getVerificationFlow() async {
    try {
      final response = await _client.get(
        _buildUri(path: 'self-service/verification/$_flowType'),
        headers: _commonHeaders,
      );

      if (response.statusCode != 200) {
        return null;
      }

      return VerificationFlowDto.fromString(response.body);
    } catch (e, st) {
      _logger.warning('Error getting verification flow', e, st);

      return null;
    }
  }

  Future<void> refreshSessionToken() async {
    final sessionToken = await _credentialsStorage.read();
    final expirationTime = await _credentialsStorage.readExpirationDate();
    final hasExpired =
        expirationTime?.isBefore(DateTime.now().toLocal()) ?? true;

    if ((!kIsWeb && sessionToken == null) || hasExpired) {
      return;
    }

    try {
      final refreshResult = await http.get(
        _buildUri(
          path: 'self-service/login/$_flowType',
          queryParameters: {
            'refresh': 'true',
          },
        ),
        headers: _buildHeaders({'X-Session-Token': sessionToken}),
      );

      final decodedResult = jsonDecode(
        refreshResult.body,
      ) as Map<String, dynamic>;

      final dynamic newExpirationDate = decodedResult['expires_at'];
      switch (newExpirationDate) {
        case String _:
          await _credentialsStorage.save(
            credentials: sessionToken,
            expirationDate: newExpirationDate,
          );
        default:
          throw Exception('Flow id is invalid or empty.');
      }
    } catch (e, st) {
      _logger.warning('Could not refresh session token.', e, st);
    }
  }

  Future<RecoveryFlowResult> getRecoveryFlow() async {
    final recoveryFlow = await _client.get(
      _buildUri(path: 'self-service/recovery/$_flowType'),
    );
    try {
      final decodedResult =
          jsonDecode(recoveryFlow.body) as Map<String, dynamic>;
      final dynamic recoveryFlowId = decodedResult['id'];
      switch (recoveryFlowId) {
        case String _:
          return RecoveryFlow(recoveryFlowId);
        default:
          return RecoveryFlowError();
      }
    } catch (e, st) {
      _logger.warning('Error getting recovery flow', e, st);
      return RecoveryFlowError();
    }
  }

  Future<bool> sendEmailRecoveryFlow({
    required String flowId,
    required String email,
  }) async {
    final recoveryFlow = await _client.post(
      _buildUri(
        path: 'self-service/recovery',
        queryParameters: {'flow': flowId},
      ),
      headers: _commonHeaders,
      body: jsonEncode({'email': email, 'method': 'code'}),
    );
    return recoveryFlow.statusCode == 200;
  }

  Future<SettingsFlowResult> sendCodeRecoveryFlow({
    required String flowId,
    required String code,
  }) async {
    final recoveryFlow = await _client.post(
      _buildUri(
        path: 'self-service/recovery',
        queryParameters: {'flow': flowId},
      ),
      body: jsonEncode({'code': code, 'method': 'code'}),
      headers: _commonHeaders,
    );
    if (recoveryFlow.statusCode == 200) {
      final decodedResult =
          jsonDecode(recoveryFlow.body) as Map<String, dynamic>;
      if (decodedResult
          case {
            'state': 'passed_challenge',
            'continue_with': final List<dynamic> continueWith
          }) {
        String? settingsFlowId;
        String? sessionToken;
        for (final cw in continueWith) {
          if (cw
              case {
                'action': 'set_ory_session_token',
                'ory_session_token': final String value
              }) {
            sessionToken = value;
          } else if (cw
              case {
                'action': 'show_settings_ui',
                'flow': {'id': final String value}
              }) {
            settingsFlowId = value;
          }
        }

        if (settingsFlowId == null || sessionToken == null) {
          return SettingsFlowResultError();
        } else {
          return SettingsFlowResultData(
            flowId: settingsFlowId,
            sessionToken: sessionToken,
          );
        }
      } else {
        return SettingsFlowResultError();
      }
    }
    return SettingsFlowResultError();
  }

  Future<bool> sendNewPasswordSettingsFlow({
    required SettingsFlowResultData flow,
    required String newPassword,
  }) async {
    final settingsFlow = await _client.post(
      _buildUri(
        path: 'self-service/settings',
        queryParameters: {'flow': flow.flowId},
      ),
      body: jsonEncode({
        'method': 'password',
        'password': newPassword,
      }),
      headers: _buildHeaders({'X-Session-Token': flow.sessionToken}),
    );
    return settingsFlow.statusCode == 200;
  }

  Future<AddPasskeyResult> addPasskey({
    required PasskeyCallback passkeyCallback,
  }) async {
    try {
      final kratosToken = await _credentialsStorage.read();
      if (!kIsWeb && kratosToken == null) {
        return const AddPasskeyErrorResult();
      }

      final settingsFlow = await _initSettingsFlow();
      if (settingsFlow == null) {
        return const AddPasskeyErrorResult();
      }

      final passkeyCreationOptions = settingsFlow.passkeyCreationOptions;
      if (passkeyCreationOptions == null) {
        return const AddPasskeyErrorResult();
      }

      final credentialResult = await passkeyCallback(
        passkeyCreationOptions,
      );

      String credentialJson;
      switch (credentialResult) {
        case PasskeyCallbackSuccessResult(:final publicKeyJson):
          credentialJson = publicKeyJson;
        case PasskeyCallbackCancelledResult():
          return const AddPasskeyCancelledResult();
        case PasskeyCallbackErrorResult():
          return const AddPasskeyErrorResult();
      }

      final passkeyAddResponse = await _client.post(
        _buildUri(
          path: 'self-service/settings',
          queryParameters: {'flow': settingsFlow.id},
        ),
        body: jsonEncode({
          'csrf_token': settingsFlow.csrfToken,
          'method': 'passkey',
          'passkey_settings_register': credentialJson,
        }),
        headers: _buildHeaders({'X-Session-Token': kratosToken}),
      );

      return switch (passkeyAddResponse.statusCode) {
        200 => const AddPasskeySuccessResult(),
        400 => AddPasskeyErrorResult(
            message: _getSettingsFlowError(passkeyAddResponse),
          ),
        403 => const AddPasskeyReauthenticationRequiredResult(),
        _ => const AddPasskeyErrorResult(),
      };
    } catch (e, st) {
      _logger.warning('Error adding a passkey', e, st);
      return const AddPasskeyErrorResult();
    }
  }

  Future<RemovePasskeyResult> removePasskey({
    required String passkeyId,
  }) async {
    try {
      final kratosToken = await _credentialsStorage.read();
      if (!kIsWeb && kratosToken == null) {
        return const RemovePasskeyErrorResult();
      }

      final settingsFlow = await _initSettingsFlow();

      final removePasskeyResponse = await _client.post(
        _buildUri(
          path: 'self-service/settings',
          queryParameters: {'flow': settingsFlow!.id},
        ),
        body: jsonEncode({
          'csrf_token': settingsFlow.csrfToken,
          'method': 'passkey',
          'passkey_remove': passkeyId,
        }),
        headers: _buildHeaders({'X-Session-Token': kratosToken}),
      );

      return switch (removePasskeyResponse.statusCode) {
        200 => const RemovePasskeySuccessResult(),
        400 => RemovePasskeyErrorResult(
            message: _getSettingsFlowError(removePasskeyResponse),
          ),
        403 => const RemovePasskeyReauthenticationRequiredResult(),
        _ => const RemovePasskeyErrorResult(),
      };
    } catch (e, st) {
      _logger.warning('Error removing a passkey', e, st);
      return const RemovePasskeyErrorResult();
    }
  }

  KratosMessage? _getSettingsFlowError(http.Response response) {
    final dto = SettingsFlowDto.fromString(response.body);

    final messages = dto.ui.nodes
        .expand((node) => node.messages)
        .map((msg) => KratosMessage.forId(msg.id));

    return messages.firstOrNull;
  }

  Future<GetPasskeysResult> getPasskeys() async {
    try {
      final settingsFlow = await _initSettingsFlow();

      if (settingsFlow == null) {
        return const GetPasskeysErrorResult();
      }

      final passkeys = settingsFlow.ui.nodes
          .where((node) => node.attributes.name == 'passkey_remove')
          .map(Passkey.fromUiNode)
          .toList();

      return GetPasskeysSuccessResult(passkeys);
    } catch (e, st) {
      _logger.warning('Error getting passkeys', e, st);
      return const GetPasskeysErrorResult();
    }
  }

  /// Current [flowInfo] is required since new flow will have it's own passkey challenge
  Future<RegistrationResult> registerWithPasskey({
    required String credentialJson,
    required AuthFlowInfo flowInfo,
    Map<String, dynamic> traits = const {},
  }) async {
    try {
      final response = await _client.post(
        _buildUri(
          path: 'self-service/registration',
          queryParameters: {'flow': flowInfo.id},
        ),
        headers: _commonHeaders,
        body: jsonEncode(
          {
            'method': 'passkey',
            'csrf_token': flowInfo.csrfToken,
            'passkey_register': credentialJson,
            'traits': traits,
          },
        ),
      );

      return switch (response.statusCode) {
        200 => await _handleSuccessResponse(response),
        400 => _handleErrorResponse(response),
        _ => const RegistrationUnknownErrorResult(),
      };
    } catch (e, st) {
      _logger.severe('Error completing registration flow', e, st);
      return const RegistrationUnknownErrorResult();
    }
  }

  Future<SettingsFlowDto?> _initSettingsFlow() async {
    try {
      final kratosToken = await _credentialsStorage.read();
      if (!kIsWeb && kratosToken == null) {
        return null;
      }

      final settingsFlow = await _client.get(
        _buildUri(path: 'self-service/settings/$_flowType'),
        headers: _buildHeaders({'X-Session-Token': kratosToken}),
      );

      return SettingsFlowDto.fromString(settingsFlow.body);
    } catch (e, st) {
      _logger.warning('Error initializing settings flow', e, st);
      return null;
    }
  }

  Future<String?> _getSettingsFlowId() async {
    final kratosToken = await _credentialsStorage.read();
    if (!kIsWeb && kratosToken == null) {
      return null;
    }

    final settingsFlow = await _client.get(
      _buildUri(path: 'self-service/settings/$_flowType'),
      headers: _buildHeaders({'X-Session-Token': kratosToken}),
    );
    if (settingsFlow.statusCode == 200) {
      try {
        final decodedResult =
            jsonDecode(settingsFlow.body) as Map<String, dynamic>;
        final dynamic flowId = decodedResult['id'];
        switch (flowId) {
          case String _:
            return flowId;
          default:
            return null;
        }
      } catch (e, st) {
        _logger.warning('Error getting recovery flow', e, st);
      }
    }
    return null;
  }

  Future<UpdateProfile> updateTraits({
    required List<ProfileTrait> traits,
  }) async {
    final settingsFlowId = await _getSettingsFlowId();
    final kratosToken = await _credentialsStorage.read();

    if ((!kIsWeb && kratosToken == null) || settingsFlowId == null) {
      return ProfileUpdateFailure();
    }

    final traitsMap = Map<String, dynamic>.fromEntries(
      traits.map(
        (trait) => MapEntry<String, dynamic>(trait.traitName, trait.value),
      ),
    );

    final settingsFlow = await _client.post(
      _buildUri(
        path: 'self-service/settings',
        queryParameters: {'flow': settingsFlowId},
      ),
      body: jsonEncode({
        'method': 'profile',
        'traits': jsonEncode(traitsMap),
      }),
      headers: _buildHeaders({'X-Session-Token': kratosToken}),
    );

    return switch (settingsFlow.statusCode) {
      200 => ProfileUpdateSuccess(),
      403 => ProfileUpdateRequiresReauthorization(),
      _ => ProfileUpdateFailure(),
    };
  }

  Future<UpdatePassword> updatePassword({
    required String password,
  }) async {
    final settingsFlowId = await _getSettingsFlowId();
    final kratosToken = await _credentialsStorage.read();

    if ((!kIsWeb && kratosToken == null) || settingsFlowId == null) {
      return UpdateRequiresReauthorization();
    }

    final settingsFlow = await _client.post(
      _buildUri(
        path: 'self-service/settings',
        queryParameters: {'flow': settingsFlowId},
      ),
      body: jsonEncode({
        'method': 'password',
        'password': password,
      }),
      headers: _buildHeaders({'X-Session-Token': kratosToken}),
    );

    return switch (settingsFlow.statusCode) {
      200 => UpdateSuccess(),
      403 => UpdateRequiresReauthorization(),
      400 => UpdateFailure(error: _handleChangePasswordError(settingsFlow)),
      _ => UpdateFailure(error: null),
    };
  }

  Future<UserProfile> getUserProfile() async {
    final kratosToken = await _credentialsStorage.read();

    if (kratosToken == null) {
      return ErrorGettingUserProfile();
    }

    final whoamiResponse = await _client.get(
      _buildUri(path: 'sessions/whoami'),
      headers: _buildHeaders({'X-Session-Token': kratosToken}),
    );

    if (whoamiResponse.statusCode == 200) {
      try {
        final session = Session.fromJson(
          json.decode(whoamiResponse.body) as Map<String, dynamic>,
        );
        final userId = session.identity.id;
        final traits = session.identity.traits;
        final profileTraits = traits.entries
            .map(
              (e) => ProfileTrait(
                traitName: e.key,
                value: e.value,
              ),
            )
            .toList();
        return UserProfileData(
          traits: profileTraits,
          userId: userId,
        );
      } catch (e, st) {
        _logger.warning('Error getting user profile', e, st);
      }
    }
    return ErrorGettingUserProfile();
  }

  Uri _buildUri({
    required String path,
    Map<String, String>? queryParameters,
  }) =>
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: path,
        queryParameters: queryParameters,
      );

  Map<String, String> _buildHeaders(Map<String, String?>? additionalHeaders) {
    if (additionalHeaders == null) {
      return _commonHeaders;
    }
    return {
      ..._commonHeaders,
      for (final header in additionalHeaders.entries)
        if (header.value != null) header.key: header.value!,
    };
  }
}
