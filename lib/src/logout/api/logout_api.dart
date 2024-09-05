import 'dart:convert';

import 'package:http/http.dart';
import 'package:leancode_kratos_client/src/common/api/data_state.dart';

class LogoutApi {
  LogoutApi(Uri baseUri, Client client)
      : _baseUri = baseUri,
        _client = client;

  final Uri _baseUri;
  final Client _client;

  Future<DataState> logout({
    required String sessionToken,
  }) async {
    final response = await _client.delete(
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

    return switch (response.statusCode) {
      204 => const DataSuccess(),
      _ => const DataFailed(),
    };
  }
}
