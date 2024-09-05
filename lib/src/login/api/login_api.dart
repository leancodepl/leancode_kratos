import 'dart:convert';

import 'package:http/http.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/common/api/data_state.dart';
import 'package:leancode_kratos_client/src/login/api/login_error.dart';
import 'package:leancode_kratos_client/src/login/api/login_success.dart';

class LoginApi {
  LoginApi(Uri baseUri, Client client)
      : _baseUri = baseUri,
        _client = client;

  final Uri _baseUri;
  final Client _client;

  Future<DataState> loginWithPassword({
    required String email,
    required String password,
    required String flowId,
  }) async {
    final response = await _client.post(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/login',
        queryParameters: {
          'flow': flowId,
        },
      ),
      headers: {
        'Accept': 'application/json',
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

    return switch (response.statusCode) {
      200 => DataSuccess<LoginSuccessResponse>(
          data: loginSuccessResponseFromJson(response.body),
        ),
      400 => DataFailed<LoginErrorResponse>(
          data: loginErrorResponseFromJson(response.body),
        ),
      _ => const DataFailed<void>(),
    } as DataState;
  }

  Future<DataState> initLoginFlow({
    bool returnSessionTokenExchangeCode = true,
    required String? returnTo,
    required bool refresh,
  }) async {
    final registrationFlow = await _client.get(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/login/api',
        queryParameters: {
          if (returnSessionTokenExchangeCode)
            'return_session_token_exchange_code': 'true',
          if (returnTo != null) 'return_to': returnTo,
          if (refresh) 'refresh': 'true',
        },
      ),
    );
    return DataSuccess(data: AuthFlowDto.fromString(registrationFlow.body));
  }

  Future<Response> refreshSessionToken({
    required String sessionToken,
  }) async {
    return _client.get(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/login/api',
        queryParameters: {'refresh': 'true'},
      ),
      headers: {'X-Session-Token': sessionToken},
    );
  }
}
