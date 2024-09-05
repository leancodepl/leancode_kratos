import 'dart:convert';

import 'package:http/http.dart';
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/common/api/data_state.dart';

class RegistrationApi {
  RegistrationApi(Uri baseUri, Client client)
      : _baseUri = baseUri,
        _client = client;

  final Uri _baseUri;
  final Client _client;

  Future<DataState> registerWithPassword({
    required String password,
    required Map<String, dynamic> traits,
    required String flowId,
    required String? csrfToken,
  }) async {
    final response = await _client.post(
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

    return switch (response.statusCode) {
      200 => DataSuccess(data: response),
      400 => DataFailed(data: response),
      _ => const DataFailed(),
    };
  }

  Future<DataState> initRegistrationFlow({
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
    return DataSuccess(data: AuthFlowDto.fromString(registrationFlow.body));
  }

  Future<Response> registerWithOidc({
    required Map<String, dynamic> traits,
    required String flowId,
    required String? csrfToken,
    required OidcProvider provider,
    required String? effectiveIdToken,
  }) async {
    final response = await _client.post(
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

    return response;
  }

  Future<DataState> exchangeToken({
    required String initCode,
    required String returnToCode,
  }) async {
    final response = await _client.get(
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

    return switch (response.statusCode) {
      200 => DataSuccess(data: response),
      _ => DataFailed(data: response),
    };
  }

  Future<DataState> getRegistrationFlow({required String id}) async {
    final registrationFlow = await _client.get(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/registration/flows',
        queryParameters: {'id': id},
      ),
    );
    return DataSuccess(data: AuthFlowDto.fromString(registrationFlow.body));
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
