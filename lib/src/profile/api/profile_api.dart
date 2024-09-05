import 'dart:convert';

import 'package:http/http.dart';
import 'package:leancode_kratos_client/src/common/api/data_state.dart';
import 'package:leancode_kratos_client/src/profile/api/profile_settings.dart';

class ProfileApi {
  ProfileApi(Uri baseUri, Client client)
      : _baseUri = baseUri,
        _client = client;

  final Uri _baseUri;
  final Client _client;

  Future<DataState> updatePassword({
    required String password,
    required String kratosToken,
    required String settingsFlowId,
  }) async {
    final response = await _client.post(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/settings',
        queryParameters: {'flow': settingsFlowId},
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-Session-Token': kratosToken,
      },
      body: jsonEncode({
        'method': 'password',
        'password': password,
      }),
    );

    return switch (response.statusCode) {
      200 => const DataSuccess(),
      _ => DataFailed(data: response),
    };
  }

  Future<DataState> getSettings({
    required String kratosToken,
  }) async {
    final response = await _client.get(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/settings/api',
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-Session-Token': kratosToken,
      },
    );

    return switch (response.statusCode) {
      200 => DataSuccess(
          data: profileSettingsSuccessResponseFromJson(response.body),
        ),
      _ => DataFailed(data: response),
    };
  }
}
