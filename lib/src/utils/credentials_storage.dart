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
  const FlutterSecureCredentialsStorage();

  static const _key = 'kratos_login_token';
  static const _expirationKey = 'kratos_token_expiration';

  FlutterSecureStorage get _storage => const FlutterSecureStorage();

  @override
  Future<String?> read() async {
    return _storage.read(key: _key);
  }

  @override
  Future<void> save({
    required String? credentials,
    required String expirationDate,
  }) async {
    await _storage.write(key: _key, value: credentials);
    await _storage.write(key: _expirationKey, value: expirationDate);
  }

  @override
  Future<void> clear() {
    return _storage.delete(key: _key);
  }

  @override
  Future<DateTime?> readExpirationDate() async {
    final expirationDate = await _storage.read(key: _expirationKey);
    if (expirationDate != null) {
      return DateTime.parse(expirationDate);
    }
    return null;
  }
}
