import 'dart:convert';

import 'package:http/http.dart';

class VerificationApi {
  VerificationApi(Uri baseUri, Client client)
      : _baseUri = baseUri,
        _client = client;

  final Uri _baseUri;
  final Client _client;

  Future<Response> verifyAccount({
    required String code,
    required String flowId,
  }) async {
    return _client.post(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/verification',
        queryParameters: {
          'code': code,
          'flow': flowId,
        },
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'method': 'code'}),
    );
  }

  Future<Response> getNewVerificationFlow({
    required String email,
    required String flowId,
  }) async {
    return _client.post(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/verification',
        queryParameters: {'flow': flowId},
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        {
          'email': email,
          'method': 'code',
        },
      ),
    );
  }

  Future<Response> getVerificationFlow() async {
    return _client.get(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/verification/api',
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    );
  }
}
