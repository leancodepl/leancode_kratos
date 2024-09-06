import 'dart:convert';

import 'package:http/http.dart';
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';

class RegistrationApi {
  RegistrationApi(Uri baseUri, Client client)
      : _baseUri = baseUri,
        _client = client;

  final Uri _baseUri;
  final Client _client;

  Future<Response> registerWithPassword({
    required String password,
    required Map<String, dynamic> traits,
    required String flowId,
    required String? csrfToken,
  }) async {
    return _client.post(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/registration',
        queryParameters: {'flow': flowId},
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        {
          'method': 'password',
          'csrf_token': csrfToken,
          'password': password,
          'traits': traits,
        },
      ),
    );
  }

  Future<AuthFlowDto> initRegistrationFlow({
    bool returnSessionTokenExchangeCode = true,
    String? returnTo,
  }) async {
    final registrationFlow = await _client.get(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/registration/api',
        queryParameters: {
          if (returnSessionTokenExchangeCode)
            'return_session_token_exchange_code': 'true',
          if (returnTo != null) 'return_to': returnTo,
        },
      ),
    );
    return AuthFlowDto.fromString(registrationFlow.body);
  }

  Future<Response> registerWithOidc({
    required Map<String, dynamic> traits,
    required String flowId,
    required String? csrfToken,
    required OidcProvider provider,
    required String? effectiveIdToken,
  }) async {
    return _client.post(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/registration',
        queryParameters: {'flow': flowId},
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        {
          'method': 'oidc',
          'provider': provider.name,
          'id_token': effectiveIdToken,
          'csrf_token': csrfToken,
          'traits': traits,
        },
      ),
    );
  }

  Future<Response> exchangeToken({
    required String initCode,
    required String returnToCode,
  }) async {
    return _client.get(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'sessions/token-exchange',
        queryParameters: {
          'init_code': initCode,
          'return_to_code': returnToCode,
        },
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    );
  }

  Future<AuthFlowDto> getRegistrationFlow({required String id}) async {
    final registrationFlow = await _client.get(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/registration/flows',
        queryParameters: {'id': id},
      ),
    );
    return AuthFlowDto.fromString(registrationFlow.body);
  }

  Future<Response> registerWithProfile({
    required Map<String, dynamic> traits,
    required String flowId,
    required String? csrfToken,
  }) async {
    return _client.post(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/registration',
        queryParameters: {'flow': flowId},
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        {
          'method': 'profile',
          'csrf_token': csrfToken,
          'traits': traits,
        },
      ),
    );
  }
}
