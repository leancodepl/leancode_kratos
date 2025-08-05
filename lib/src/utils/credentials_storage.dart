import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract interface class CredentialsStorage {
  Future<String?> read();

  /// - [credentials] may be null on Web.
  Future<void> save({
    required String? credentials,
    required String expirationDate,
  });

  Future<void> clear();

  Future<DateTime?> readExpirationDate();
}

class FlutterSecureCredentialsStorage implements CredentialsStorage {
  FlutterSecureCredentialsStorage();

  static const _key = 'kratos_login_token';
  static const _expirationKey = 'kratos_token_expiration';

  String? _loginToken;
  DateTime? _kratosExpirationToken;

  FlutterSecureStorage get _storage => const FlutterSecureStorage();

  @override
  Future<String?> read() async =>
      _loginToken ??= await _storage.read(key: _key);

  @override
  Future<void> save({
    required String? credentials,
    required String expirationDate,
  }) async {
    await _storage.write(key: _key, value: credentials);
    await _storage.write(key: _expirationKey, value: expirationDate);
    _loginToken = credentials;
    _kratosExpirationToken = DateTime.parse(expirationDate);
  }

  @override
  Future<void> clear() async {
    await _storage.delete(key: _key);
    _loginToken = null;
  }

  @override
  Future<DateTime?> readExpirationDate() async {
    final expirationDate = await _storage.read(key: _expirationKey);
    if (expirationDate != null) {
      return _kratosExpirationToken ??= DateTime.parse(expirationDate);
    }
    return null;
  }
}
