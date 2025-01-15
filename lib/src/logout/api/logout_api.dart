import 'dart:convert';

import 'package:http/http.dart';

class LogoutApi {
  LogoutApi(Uri baseUri, Client client)
      : _baseUri = baseUri,
        _client = client;

  final Uri _baseUri;
  final Client _client;

  Future<Response> logout({
    required String sessionToken,
  }) async {
    return _client.delete(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/logout/api',
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'session_token': sessionToken}),
    );
  }
}
