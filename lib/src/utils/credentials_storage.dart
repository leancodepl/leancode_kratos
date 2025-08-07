import 'dart:async';

import 'package:flutter/material.dart';
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
  CacheState _state = const CacheUninitialized();

  @visibleForTesting
  CacheState get state => _state;

  Future<String?> read() async {
    switch (_state) {
      case CacheUninitialized():
        final value = await _storage.read(key: key);
        _state = CacheInitialized(value);
        return value;
      case CacheInitialized(:final value):
        return value;
    }
  }

  Future<void> save({
    required String? value,
  }) async {
    await _storage.write(key: key, value: value);
    _state = CacheInitialized(value);
  }

  Future<void> clear() async {
    await _storage.delete(key: key);
    _state = const CacheInitialized(null);
  }
}

@visibleForTesting
sealed class CacheState {
  const CacheState();
}

@visibleForTesting
class CacheInitialized extends CacheState {
  const CacheInitialized(this.value);

  final String? value;
}

@visibleForTesting
class CacheUninitialized extends CacheState {
  const CacheUninitialized();
}
