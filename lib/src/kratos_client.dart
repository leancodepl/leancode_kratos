import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:leancode_kratos_client/src/models/domain/login_response.dart';
import 'package:leancode_kratos_client/src/models/domain/registration_domain.dart';
import 'package:leancode_kratos_client/src/models/domain/registration_response.dart';
import 'package:leancode_kratos_client/src/models/login_error.dart'
    as login_error;
import 'package:leancode_kratos_client/src/models/login_success.dart';
import 'package:leancode_kratos_client/src/models/registration.dart';
import 'package:leancode_kratos_client/src/models/registration_success.dart';
import 'package:logging/logging.dart';

class KratosClient {
  KratosClient({required Uri baseUri}) : _baseUri = baseUri;

  final Uri _baseUri;
  final Logger _logger = Logger('KratosClientLogger');
  static const _acceptHeaders = {'Accept': 'application/json'};

  Future<RegistrationFlowModel?> getRegistrationFlow() async {
    try {
      final registrationFlow = await http.get(
        _buildUri(path: '/self-service/registration/api'),
      );
      final decodedResult = registrationFlowFromJson(registrationFlow.body);
      return RegistrationFlowModel.fromRegistrationFlow(decodedResult);
    } catch (e, _) {
      return null;
    }
  }

  Future<RegistrationResponse> completeRegistration(
      {required String flowId, required Map<String, dynamic> formData}) async {
    try {
      final response = await http.post(
          _buildUri(
            path: 'self-service/registration',
            queryParameters: {'flow': flowId},
          ),
          headers: {
            ..._acceptHeaders,
            'Content-Type': 'application/json',
          },
          body: jsonEncode(formData));
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

  Future<String?> _getLoginFlow() async {
    final loginFlow = await http.get(_buildUri(path: 'self-service/login/api'));
    try {
      final decodedResult = jsonDecode(loginFlow.body) as Map<String, dynamic>;
      final loginFlowId = decodedResult['id'];
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
    final flowId = await _getLoginFlow();
    if (flowId == null) {
      // error ;
      return ErrorGettingFlowId();
    }
    try {
      final loginFlowResult = await http.post(
        _buildUri(
          path: 'self-service/login',
          queryParameters: {'flow': flowId},
        ),
        headers: {
          ..._acceptHeaders,
          'Content-Type': 'application/json',
        },
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

        //


        //


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
    final nodes = decodedResult.ui?.nodes;
    if (nodes == null) {
      _logger.severe('Response data is not valid');
      return FailedRegistration();
    }

    final errorNodes = nodes
        .map((element) {
          return switch ((element.attributes?.name, element.messages)) {
            (final attributeName?, [Message(:final id?), ...]) => ((
                attributeName,
                id,
              )),
            _ => null
          };
        })
        .nonNulls
        .toList();
    return ErrorResponse(errors: errorNodes);
  }

  RegistrationResponse _handleSuccessResponse(http.Response response) {
    final decodedResponse = registrationSuccessResponseFromJson(response.body);
    final continueWith = decodedResponse.continueWith;
    if (continueWith == null || continueWith.isEmpty) {
      return SuccessResponseWithoutFurtherAction();
    } else {
      final responseData = continueWith
          .map((element) {
            return switch ((
              element.action,
              element.flow?.id,
              element.flow?.verifiableAddress
            )) {
              (final action?, final actionId?, final emailAddress?) => ((
                  action,
                  actionId,
                  emailAddress
                )),
              _ => null
            };
          })
          .nonNulls
          .toList();
      return SuccessResponse(
        action: responseData.first.$1,
        flowId: responseData.first.$2,
        emailToVerify: responseData.first.$3,
      );
    }
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
