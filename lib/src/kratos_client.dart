import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:leancode_kratos_client/src/login/api/login_error.dart'
    as login_error;
import 'package:leancode_kratos_client/src/login/api/login_success.dart';
import 'package:leancode_kratos_client/src/login/domain/login_response.dart';
import 'package:leancode_kratos_client/src/registration/api/registration.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_success.dart';
import 'package:leancode_kratos_client/src/registration/domain/registration_domain.dart';
import 'package:leancode_kratos_client/src/registration/domain/registration_response.dart';
import 'package:leancode_kratos_client/src/utils/credentials_storage.dart';
import 'package:logging/logging.dart';

class KratosClient {
  KratosClient({
    required Uri baseUri,
    required CredentialsStorage credentialsStorage,
    http.Client? httpClient,
  })  : _baseUri = baseUri,
        _credentialsStorage = credentialsStorage,
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
      // error ;
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
        await _credentialsStorage.save(loginResult.sessionToken);
        return LoginSuccess();
      } else if (loginFlowResult.statusCode == 400) {
        final errorLoginResult =
            login_error.loginErrorResponseFromJson(loginFlowResult.body);
        return LoginFailure(errorId: errorLoginResult.ui.messages.first.id);
      }
      return UnknownLoginError();
    } catch (e, st) {
      _logger.warning('Login failed.', e, st);

      return UnknownLoginError();
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
