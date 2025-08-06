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

  final _loginToken = _FlutterSecureCredentialsStorageCacheItem(
    key: _key,
  );

  final _expirationDate = _FlutterSecureCredentialsStorageCacheItem(
    key: _expirationKey,
  );

  @override
  Future<String?> read() => _loginToken.read();

  @override
  Future<void> save({
    required String? credentials,
    required String expirationDate,
  }) async {
    await _loginToken.save(value: credentials);
    await _expirationDate.save(value: expirationDate);
  }

  @override
  Future<void> clear() async {
    await _loginToken.clear();
    await _expirationDate.clear();
  }

  @override
  Future<DateTime?> readExpirationDate() async {
    final expirationDate = await _expirationDate.read();
    if (expirationDate != null) {
      return DateTime.parse(expirationDate);
    }
    return null;
  }
}

class _FlutterSecureCredentialsStorageCacheItem {
  _FlutterSecureCredentialsStorageCacheItem({
    required this.key,
  });

  final String key;
  String? value;

  FlutterSecureStorage get _storage => const FlutterSecureStorage();

  Future<String?> read() async {
    return value ??= await _storage.read(key: key);
  }

  Future<void> save({
    required String? value,
  }) async {
    await _storage.write(key: key, value: value);
    this.value = value;
  }

  Future<void> clear() async {
    await _storage.delete(key: key);
    value = null;
  }
}
