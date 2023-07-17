import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract interface class CredentialsStorage {
  Future<String?> read();
  Future<void> save(String credentials);
  Future<void> clear();
}

class FlutterSecureCredentialsStorage implements CredentialsStorage {
  const FlutterSecureCredentialsStorage();

  static const _key = 'kratos_login_token';
  FlutterSecureStorage get _storage => const FlutterSecureStorage();

  @override
  Future<String?> read() async {
    return _storage.read(key: _key);
  }

  @override
  Future<void> save(String value) {
    return _storage.write(key: _key, value: value);
  }

  @override
  Future<void> clear() {
    return _storage.delete(key: _key);
  }
}
