import 'dart:convert';

import 'package:http/http.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';

class LoginApi {
  LoginApi(Uri baseUri, Client client)
      : _baseUri = baseUri,
        _client = client;

  final Uri _baseUri;
  final Client _client;

  Future<Response> loginWithPassword({
    required String email,
    required String password,
    required String flowId,
  }) async {
    return _client.post(
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
  }

  Future<AuthFlowDto> initLoginFlow({
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
    return AuthFlowDto.fromString(registrationFlow.body);
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
