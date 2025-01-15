import 'dart:convert';

import 'package:http/http.dart';

class RecoveryApi {
  RecoveryApi(Uri baseUri, Client client)
      : _baseUri = baseUri,
        _client = client;

  final Uri _baseUri;
  final Client _client;

  Future<Response> getRecoveryFlow() async {
    return _client.get(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/recovery/api',
      ),
    );
  }

  Future<Response> sendEmailRecoveryFlow({
    required String flowId,
    required String email,
  }) async {
    return _client.post(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/recovery/api',
        queryParameters: {'flow': flowId},
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'email': email,
        'method': 'code',
      }),
    );
  }

  Future<Response> sendCodeRecoveryFlow({
    required String flowId,
    required String code,
  }) async {
    return _client.post(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/recovery',
        queryParameters: {'flow': flowId},
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'code': code,
        'method': 'code',
      }),
    );
  }
}
