import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/login/api/login_error.dart'
    as login_error;
import 'package:leancode_kratos_client/src/login/api/login_success.dart';
import 'package:leancode_kratos_client/src/registration/api/registration.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_success.dart';
import 'package:logging/logging.dart';

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
    'Content-Type': 'application/json'
  };

  Future<RegistrationFlowModel?> getRegistrationFlow() async {
    try {
      final registrationFlow = await _client.get(
        _buildUri(path: '/self-service/registration/api'),
      );
      final decodedResult = registrationFlowFromJson(registrationFlow.body);
      return RegistrationFlowModel.fromRegistrationFlow(decodedResult);
    } catch (e, _) {
      return null;
    }
  }

  Future<RegistrationResponse> completeRegistration({
    required String flowId,
    required Map<String, dynamic> formData,
  }) async {
    try {
      final response = await _client.post(
        _buildUri(
          path: 'self-service/registration',
          queryParameters: {'flow': flowId},
        ),
        headers: _commonHeaders,
        body: jsonEncode(formData),
      );
      if (response.statusCode == 400) {
        return _handleErrorResponse(response);
      } else if (response.statusCode == 200) {
        return _handleSuccessResponse(response);
      }
      return UnhandledStatusCodeError();
    } catch (e, st) {
      _logger.severe('Error completing registration flow', e, st);
      return FailedRegistration();
    }
  }

  Future<String?> getLoginFlow() async {
    final loginFlow =
        await _client.get(_buildUri(path: 'self-service/login/api'));
    try {
      final decodedResult = jsonDecode(loginFlow.body) as Map<String, dynamic>;
      final dynamic loginFlowId = decodedResult['id'];
      switch (loginFlowId) {
        case String _:
          return loginFlowId;
        default:
          throw Exception('Login flowId is invalid');
      }
    } catch (e, st) {
      _logger.warning('Error getting login flow', e, st);
      return null;
    }
  }

  Future<LoginResponse> login({
    required String email,
    required String password,
  }) async {
    final flowId = await getLoginFlow();
    if (flowId == null) {
      return ErrorGettingFlowId();
    }
    try {
      final loginFlowResult = await _client.post(
        _buildUri(
          path: 'self-service/login',
          queryParameters: {'flow': flowId},
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
        return LoginSuccess();
      } else if (loginFlowResult.statusCode == 400) {
        final errorLoginResult =
            login_error.loginErrorResponseFromJson(loginFlowResult.body);
        final messageId = errorLoginResult.ui.messages.first.id;
        if (messageId == 4000010) {
          return UnverifiedAccountError();
        }
        return LoginFailure(errorId: errorLoginResult.ui.messages.first.id);
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
