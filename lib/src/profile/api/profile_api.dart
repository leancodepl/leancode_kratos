import 'dart:convert';

import 'package:http/http.dart';
import 'package:leancode_kratos_client/src/profile/api/profile_settings.dart';

class ProfileApi {
  ProfileApi(Uri baseUri, Client client)
      : _baseUri = baseUri,
        _client = client;

  final Uri _baseUri;
  final Client _client;

  Future<Response> updatePassword({
    required String password,
    required String kratosToken,
    required String settingsFlowId,
  }) async {
    return _client.post(
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
  }

  Future<Response> getSettings({
    required String kratosToken,
  }) async {
    return _client.get(
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
  }

  Future<Response> updateTraits({
    required String kratosToken,
    required String settingsFlowId,
    required Map<String, dynamic> traitsMap,
  }) async {
    return _client.post(
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
        'method': 'profile',
        'traits': jsonEncode(traitsMap),
      }),
    );
  }

  Future<Response> sendNewPasswordSettingsFlow({
    required String newPassword,
    required String kratosToken,
    required String flowId,
  }) async {
    return _client.post(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'self-service/settings',
        queryParameters: {'flow': flowId},
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-Session-Token': kratosToken,
      },
      body: jsonEncode({
        'method': 'password',
        'password': newPassword,
      }),
    );
  }

  Future<Response> getWhaomiSession({
    required String kratosToken,
  }) async {
    return _client.post(
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: 'sessions/whoami',
      ),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-Session-Token': kratosToken,
      },
    );
  }
}
