import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/login/api/login_error.dart'
    as login_error;
import 'package:leancode_kratos_client/src/login/api/login_success.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_success.dart';
import 'package:leancode_kratos_client/src/registration/api/token_exchange_success.dart';
import 'package:logging/logging.dart';

const _unverifiedAccountMessageId = 4000010;

typedef BrowserCallback = Future<String> Function(String url);

class KratosClient {
  KratosClient({
    required Uri baseUri,
    required BrowserCallback browserCallback,
    CredentialsStorage? credentialsStorage,
    http.Client? httpClient,
  })  : _baseUri = baseUri,
        _browserCallback = browserCallback,
        _credentialsStorage =
            credentialsStorage ?? const FlutterSecureCredentialsStorage(),
        _client = httpClient ?? http.Client();

  final Uri _baseUri;
  final BrowserCallback _browserCallback;
  final CredentialsStorage _credentialsStorage;
  final http.Client _client;
  final Logger _logger = Logger('KratosClientLogger');
  static const _commonHeaders = {
    'Accept': 'application/json',
    'Content-Type': 'application/json'
  };

  Future<AuthFlowDto?> _initRegistrationFlow({
    required bool returnSessionTokenExchangeCode,
    String? returnTo,
  }) async {
    return _initAuthFlow(
      path: 'self-service/registration/api',
      returnSessionTokenExchangeCode: returnSessionTokenExchangeCode,
      returnTo: returnTo,
    );
  }

  Future<AuthFlowDto?> _initLoginFlow({
    bool returnSessionTokenExchangeCode = true,
    required String? returnTo,
  }) async {
    return _initAuthFlow(
      path: 'self-service/login/api',
      returnSessionTokenExchangeCode: returnSessionTokenExchangeCode,
      returnTo: returnTo,
    );
  }

  Future<AuthFlowDto?> _initAuthFlow({
    required String path,
    required bool returnSessionTokenExchangeCode,
    required String? returnTo,
  }) async {
    try {
      final registrationFlow = await _client.get(
        _buildUri(
          path: path,
          queryParameters: {
            if (returnSessionTokenExchangeCode)
              'return_session_token_exchange_code': 'true',
            if (returnTo != null) 'return_to': returnTo,
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

  Future<RegistrationResponse> registerWithPassword({
    required String password,
    Map<String, dynamic> traits = const <String, dynamic>{},
  }) async {
    final flow =
        await _initRegistrationFlow(returnSessionTokenExchangeCode: false);

    if (flow == null) {
      return const FailedRegistration();
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

      return const UnhandledStatusCodeError();
    } catch (e, st) {
      _logger.severe('Error completing registration flow', e, st);
      return const FailedRegistration();
    }
  }

  Future<RegistrationResponse> registerWithOidc({
    required OidcProvider provider,
    required String returnTo,
    Map<String, dynamic> traits = const <String, dynamic>{},
    AuthFlowInfo? flowInfo,
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
      return const FailedRegistration();
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
              'csrf_token': effectiveFlowInfo.csrfToken,
              'traits': traits,
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
          response,
          effectiveFlowInfo,
        );
      } else if (response.statusCode == 303) {
        return await _handleRedirectResponse(response, effectiveFlowInfo);
      }

      return const UnhandledStatusCodeError();
    } catch (e, st) {
      _logger.severe('Error completing registration flow', e, st);
      return const FailedRegistration();
    }
  }

  RegistrationResponse _handleErrorResponse(http.Response response) {
    final dto = AuthFlowDto.fromString(response.body);
    return mapRegistrationErrorResponse(dto);
  }

  RegistrationResponse _handleSuccessResponse(http.Response response) {
    final decodedResponse =
        RegistrationSuccessResponse.fromString(response.body);
    return mapRegistrationSuccessResponse(decodedResponse);
  }

  Future<RegistrationResponse> _handleBrowserLocationChangeRequiredResponse(
    http.Response response,
    AuthFlowInfo info,
  ) async {
    final browserLocationChangeRequiredResponse =
        RegistrationBrowserLocationChangeRequiredResponse.fromString(
      response.body,
    );

    final redirectBrowserTo =
        browserLocationChangeRequiredResponse.redirectBrowserTo;

    if (redirectBrowserTo == null) {
      return const FailedRegistration();
    }

    final result = await _browserCallback(redirectBrowserTo);

    final returnToCode = Uri.parse(result).queryParameters['code'];
    final initCode = info.sessionTokenExchangeCode;

    if (initCode == null) {
      return const FailedRegistration();
    }

    if (returnToCode == null) {
      final newFlow = await _getRegistrationFlow(info.id);

      if (newFlow == null) {
        return const FailedRegistration();
      }

      return mapRegistrationErrorResponse(
        newFlow.copyWith(sessionTokenExchangeCode: initCode),
      );
    }

    return _exchangeSessionToken(initCode, returnToCode);
  }

  Future<RegistrationResponse> _handleRedirectResponse(
    http.Response response,
    AuthFlowInfo info,
  ) async {
    final location = response.headers['location'];

    if (location == null) {
      return const FailedRegistration();
    }

    final returnToCode = Uri.parse(location).queryParameters['code'];
    final initCode = info.sessionTokenExchangeCode;

    if (initCode == null || returnToCode == null) {
      return const FailedRegistration();
    }

    return _exchangeSessionToken(initCode, returnToCode);
  }

  Future<RegistrationResponse> _exchangeSessionToken(
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

      return const SuccessResponse();
    } else {
      return const FailedRegistration();
    }
  }

  Future<LoginResponse> completeLogin({
    required Map<String, dynamic> formData,
  }) async {
    try {
      final flow = await _initLoginFlow(returnTo: null);

      if (flow == null) {
        return UnknownLoginError();
      }

      final loginFlowResult = await _client.post(
        _buildUri(
          path: 'self-service/login',
          queryParameters: {'flow': flow.id},
        ),
        headers: _commonHeaders,
        body: jsonEncode(formData),
      );

      if (loginFlowResult.statusCode == 200) {
        final loginResult = loginSuccessResponseFromJson(loginFlowResult.body);
        await _credentialsStorage.save(
          credentials: loginResult.sessionToken,
          expirationDate: loginResult.session.expiresAt.toString(),
        );
        return LoginSuccess();
      } else if (loginFlowResult.statusCode == 400) {
        final errorLoginResult =
            login_error.loginErrorResponseFromJson(loginFlowResult.body);
        final messageId = errorLoginResult.ui.messages.firstOrNull?.id;
        if (messageId == _unverifiedAccountMessageId) {
          return UnverifiedAccountError();
        }
        if (messageId != null) {
          return LoginFailure(errorId: KratosError.forId(messageId));
        }
        return UnknownLoginError();
      }
      return UnknownLoginError();
    } catch (e, st) {
      _logger.warning('Login failed.', e, st);

      return UnknownLoginError();
    }
  }

  Future<Logout> logout() async {
    final sessionToken = await _credentialsStorage.read();
    if (sessionToken == null) {
      return LogoutFail();
    }
    final logoutResult = await _client.delete(
      _buildUri(path: 'self-service/logout/api'),
      headers: _commonHeaders,
      body: jsonEncode(
        {
          'session_token': sessionToken,
        },
      ),
    );
    if (logoutResult.statusCode == 204) {
      await _credentialsStorage.clear();
      return LogoutSuccess();
    } else {
      return LogoutFail();
    }
  }

  Future<VerificationFlow> getVerificationFlow() async {
    final response = await _client.get(
      _buildUri(path: 'self-service/verification/api'),
      headers: _commonHeaders,
    );
    try {
      final decodedResult = jsonDecode(response.body) as Map<String, dynamic>;
      final dynamic loginFlowId = decodedResult['id'];
      switch (loginFlowId) {
        case String _:
          return VerificationFlowResult(flowId: loginFlowId);
        default:
          return VerificationFlowResultError();
      }
    } catch (e, st) {
      _logger.warning('Error getting verification flow', e, st);
      return VerificationFlowResultError();
    }
  }

  Future<VerificationResult> verifyAccount({
    required String flowId,
    required String email,
    required String code,
  }) async {
    final result = await _client.post(
      _buildUri(
        path: 'self-service/verification',
        queryParameters: {'code': code, 'flow': flowId},
      ),
      headers: _commonHeaders,
      body: jsonEncode(
        {
          'email': email,
          'method': 'code',
        },
      ),
    );
    try {
      final decodedResult = jsonDecode(result.body) as Map<String, dynamic>;
      final state = decodedResult['state'] as String;
      if (state == 'passed_challenge') {
        return VerificationSuccessResult();
      } else {
        return VerificationFailedResult(errorCode: '4070006');
      }
    } catch (e, st) {
      _logger.warning('Error completing verification', e, st);
      return VerificationFailedResult();
    }
  }

  /// getNewVerificationFlow
  /// Use when old verification flow expired / verification flow interrupted on mobile
  ///

  Future<VerificationFlow> getNewVerificationFlow({
    required String email,
  }) async {
    final verificationFlow = await getVerificationFlow();
    if (verificationFlow is VerificationFlowResult) {
      final response = await _client.post(
        _buildUri(
          path: 'self-service/verification',
          queryParameters: {'flow': verificationFlow.flowId},
        ),
        headers: _commonHeaders,
        body: jsonEncode(
          {
            'email': email,
            'method': 'code',
          },
        ),
      );
      try {
        final decodedResult = jsonDecode(response.body) as Map<String, dynamic>;
        final state = decodedResult['state'] as String;
        if (state == 'sent_email') {
          return verificationFlow;
        }
      } catch (e, st) {
        _logger.warning('Error getting verification flow', e, st);
        return VerificationFlowResultError();
      }
    }
    return VerificationFlowResultError();
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
      body: jsonEncode({'email': email, 'method': 'code'}),
    );
    return recoveryFlow.statusCode == 200;
  }

  Future<void> sendCodeRecoveryFlow({
    required String flowId,
    required String code,
  }) async {
    final recoveryFlow = await _client.post(
      _buildUri(
        path: 'self-service/recovery',
        queryParameters: {'flow': flowId},
      ),
      body: jsonEncode({'code': code}),
    );
    if (recoveryFlow.statusCode == 422) {
      final cookies = recoveryFlow.headers['set-cookie'];
    }
  }

  RegistrationResponse _handleErrorResponse(http.Response response) {
    final decodedResult = registrationFlowFromJson(response.body);
    return mapRegistrationErrorResponse(decodedResult);
  }

  RegistrationResponse _handleSuccessResponse(http.Response response) {
    final decodedResponse = registrationSuccessResponseFromJson(response.body);
    return mapRegistrationSuccessResponse(decodedResponse);
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
}
