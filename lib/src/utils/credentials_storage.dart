import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:leancode_kratos_client/src/utils/async_queue.dart';

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

  final _queue = AsyncQueue<String?>();

  final _loginToken = _FlutterSecureCredentialsStorageCacheItem(
    key: _key,
  );

  final _expirationDate = _FlutterSecureCredentialsStorageCacheItem(
    key: _expirationKey,
  );

  @override
  Future<String?> read() => _queue.execute(_loginToken.read);

  @override
  Future<void> save({
    required String? credentials,
    required String expirationDate,
  }) =>
      _queue.execute(() async {
        await _loginToken.save(value: credentials);
        await _expirationDate.save(value: expirationDate);
        return null;
      });

  @override
  Future<void> clear() => _queue.execute(() async {
        await _loginToken.clear();
        await _expirationDate.clear();
        return null;
      });

  @override
  Future<DateTime?> readExpirationDate() async {
    final expirationDate = await _queue.execute(_expirationDate.read);
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
  bool _isInitialized = false;
  String? value;

  FlutterSecureStorage get _storage => const FlutterSecureStorage();

  Future<String?> read() async {
    if (_isInitialized) {
      return value;
    }
    value = await _storage.read(key: key);
    _isInitialized = true;
    return value;
  }

  Future<void> save({
    required String? value,
  }) async {
    await _storage.write(key: key, value: value);
    this.value = value;
    _isInitialized = true;
  }

  Future<void> clear() async {
    await _storage.delete(key: key);
    value = null;
    _isInitialized = false;
  }
}
