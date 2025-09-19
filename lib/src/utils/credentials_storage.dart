import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:leancode_kratos_client/src/utils/async_queue.dart';
import 'package:meta/meta.dart';

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
  FlutterSecureCredentialsStorage({
    FlutterSecureStorage storage = const FlutterSecureStorage(),
  }) : _storage = storage;

  final FlutterSecureStorage _storage;

  final _queue = AsyncQueue();

  late final _loginToken = CachedItemStorage(
    key: 'kratos_login_token',
    storage: _storage,
  );

  late final _expirationDate = CachedItemStorage(
    key: 'kratos_token_expiration',
    storage: _storage,
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
      });

  @override
  Future<void> clear() => _queue.execute(() async {
        await _loginToken.clear();
        await _expirationDate.clear();
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

@visibleForTesting
class CachedItemStorage {
  CachedItemStorage({
    required this.key,
    required FlutterSecureStorage storage,
  }) : _storage = storage;

  final FlutterSecureStorage _storage;

  final String key;
  _CacheState _state = const _CacheUninitialized();

  Future<String?> read() async {
    switch (_state) {
      case _CacheUninitialized():
        final value = await _storage.read(key: key);
        _state = _CacheInitialized(value);
        return value;
      case _CacheInitialized(:final value):
        return value;
    }
  }

  Future<void> save({
    required String? value,
  }) async {
    await _storage.write(key: key, value: value);
    _state = _CacheInitialized(value);
  }

  Future<void> clear() async {
    await _storage.delete(key: key);
    _state = const _CacheInitialized(null);
  }
}

sealed class _CacheState {
  const _CacheState();
}

class _CacheInitialized extends _CacheState {
  const _CacheInitialized(this.value);

  final String? value;
}

class _CacheUninitialized extends _CacheState {
  const _CacheUninitialized();
}
