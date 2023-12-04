import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/common/api/verification_flow_dto.dart';
import 'package:leancode_kratos_client/src/login/api/login_error.dart'
    as login_error;
import 'package:leancode_kratos_client/src/login/api/login_success.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_success.dart';
import 'package:leancode_kratos_client/src/registration/api/token_exchange_success.dart';
import 'package:logging/logging.dart';

typedef BrowserCallback = Future<String> Function(String url);
typedef SdkCallback = Future<SdkResult> Function();

class KratosClient {
  KratosClient({
    required Uri baseUri,
    CredentialsStorage? credentialsStorage,
    http.Client? httpClient,
  })  : _baseUri = baseUri,
        _credentialsStorage =
            credentialsStorage ?? const FlutterSecureCredentialsStorage(),
        _client = httpClient ?? http.Client();

  final Uri _baseUri;
  final CredentialsStorage _credentialsStorage;
  final http.Client _client;
  final Logger _logger = Logger('KratosClientLogger');
  static const _commonHeaders = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };
  static final _csrfTokenRegExp =
      RegExp(r'(csrf_token_[A-Fa-f0-9]+=[^;]+)(;|$)');
  static final _oryKratosSessionRegExp =
      RegExp(r'(ory_kratos_session=[^;]+)(;|$)');

  Future<AuthFlowDto?> _initRegistrationFlow({
    required bool returnSessionTokenExchangeCode,
    String? returnTo,
  }) async {
    return _initAuthFlow(
      path: 'self-service/registration/api',
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
      path: 'self-service/login/api',
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

    if (result is RegistrationSuccessResult &&
        decodedResponse.sessionToken != null &&
        decodedResponse.session != null) {
      await _credentialsStorage.save(
        credentials: decodedResponse.sessionToken!,
        expirationDate: decodedResponse.session!.expiresAt.toString(),
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
        credentials: parsedResponse.sessionToken!,
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

  /// NOTE: logout always clears credential storage. The result is regarding the
  /// server logout notification which is executed on a best effort basis

  Future<LogoutResult> logout() async {
    final sessionToken = await _credentialsStorage.read();
    await _credentialsStorage.clear();

    if (sessionToken == null) {
      return const LogoutUnknownErrorResult();
    }

    try {
      final logoutResult = await _client.delete(
        _buildUri(path: 'self-service/logout/api'),
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
  ///

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
        _buildUri(path: 'self-service/verification/api'),
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

    if (sessionToken == null || hasExpired) {
      return;
    }

    try {
      final refreshResult = await http.get(
        _buildUri(
          path: 'self-service/login/api',
          queryParameters: {
            'refresh': 'true',
          },
        ),
        headers: {
          'X-Session-Token': sessionToken,
        },
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
      _buildUri(path: 'self-service/recovery/api'),
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

  String? _parseCookie(String? cookieHeader) {
    if (cookieHeader == null) {
      return null;
    }
    final csrfToken = _csrfTokenRegExp.firstMatch(cookieHeader)?.group(1);
    final oryKratosToken =
        _oryKratosSessionRegExp.firstMatch(cookieHeader)?.group(1);
    return [csrfToken, oryKratosToken].where((t) => t != null).join('; ');
  }

  Future<Profile> getSettingsFlow() async {
    final kratosToken = await _credentialsStorage.read();
    if (kratosToken == null) {
      return ErrorGettingProfile();
    }
    final settingsFlow = await _client.get(
      _buildUri(path: 'self-service/settings/api'),
      headers: _buildHeaders({'X-Session-Token': kratosToken}),
    );
    if (settingsFlow.statusCode == 200) {
      try {
        final decodedResult =
            jsonDecode(settingsFlow.body) as Map<String, dynamic>;
        final dynamic flowId = decodedResult['id'];
        switch (flowId) {
          case String _:
            final identity = decodedResult['identity'] as Map<String, dynamic>;
            final traits = identity['traits'] as Map<String, dynamic>;
            final traitsList = traits.entries.map((entry) {
              return ProfileTrait(traitName: entry.key, value: entry.value);
            }).toList();
            final userId = identity['id'] as String;
            return ProfileData(
              traits: traitsList,
              flowId: flowId,
              userId: userId,
            );
          default:
            return ErrorGettingProfile();
        }
      } catch (e, st) {
        _logger.warning('Error getting recovery flow', e, st);
        return ErrorGettingProfile();
      }
    }
    return ErrorGettingProfile();
  }

  Future<UpdateProfile> updateTraits({
    required List<ProfileTrait> traits,
    required String flowId,
  }) async {
    final kratosToken = await _credentialsStorage.read();

    if (kratosToken == null) {
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
        queryParameters: {'flow': flowId},
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
    required String flowId,
  }) async {
    final kratosToken = await _credentialsStorage.read();

    if (kratosToken == null) {
      return UpdateRequiresReauthorization();
    }

    final settingsFlow = await _client.post(
      _buildUri(
        path: 'self-service/settings',
        queryParameters: {'flow': flowId},
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

  Map<String, String> _buildHeaders(Map<String, String>? additionalHeaders) {
    if (additionalHeaders == null) {
      return _commonHeaders;
    }
    return {..._commonHeaders, ...additionalHeaders};
  }
}
