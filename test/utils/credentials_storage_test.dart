import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leancode_kratos_client/src/utils/credentials_storage.dart';
import 'package:mocktail/mocktail.dart';

class _MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

class _TemporaryFlutterSecureStorage extends FlutterSecureStorage {
  final Map<String, String?> values = {};

  @override
  Future<void> write({
    required String key,
    required String? value,
    IOSOptions? iOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
    WebOptions? webOptions,
    MacOsOptions? mOptions,
    WindowsOptions? wOptions,
  }) async {
    await Future<void>.delayed(const Duration(microseconds: 200));
    values[key] = value;
  }

  @override
  Future<String?> read({
    required String key,
    IOSOptions? iOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
    WebOptions? webOptions,
    MacOsOptions? mOptions,
    WindowsOptions? wOptions,
  }) async {
    await Future<void>.delayed(const Duration(microseconds: 50));
    return values[key];
  }

  @override
  Future<void> delete({
    required String key,
    IOSOptions? iOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
    WebOptions? webOptions,
    MacOsOptions? mOptions,
    WindowsOptions? wOptions,
  }) async {
    await Future<void>.delayed(const Duration(microseconds: 500));
    values.remove(key);
  }
}

void main() {
  setUpAll(() {
    registerFallbackValue('any_key');
    registerFallbackValue('any_value');
  });

  group('FlutterSecureCredentialsStorage', () {
    late FlutterSecureStorage mockStorage;
    late FlutterSecureCredentialsStorage mockCredentialsStorage;
    late _TemporaryFlutterSecureStorage temporaryStorage;
    late FlutterSecureCredentialsStorage temporaryCredentialsStorage;

    setUp(() {
      mockStorage = _MockFlutterSecureStorage();
      mockCredentialsStorage =
          FlutterSecureCredentialsStorage(storage: mockStorage);
      temporaryStorage = _TemporaryFlutterSecureStorage();
      temporaryCredentialsStorage =
          FlutterSecureCredentialsStorage(storage: temporaryStorage);
    });

    test('clears all stored data', () async {
      await temporaryCredentialsStorage.save(
        credentials: 'test',
        expirationDate: '2024-03-21T12:00:00Z',
      );
      await temporaryCredentialsStorage.clear();
      final token = await temporaryCredentialsStorage.read();
      final expirationDate =
          await temporaryCredentialsStorage.readExpirationDate();
      expect(token, isNull);
      expect(expirationDate, isNull);
    });

    test('reads expiration date', () async {
      const expirationDateStr = '2024-03-21T12:00:00Z';

      await temporaryCredentialsStorage.save(
        credentials: 'test',
        expirationDate: expirationDateStr,
      );
      final result = await temporaryCredentialsStorage.readExpirationDate();

      expect(result, equals(DateTime.parse(expirationDateStr)));
    });

    test('returns null when no data is stored', () async {
      final result = await temporaryCredentialsStorage.readExpirationDate();
      final token = await temporaryCredentialsStorage.read();

      expect(result, isNull);
      expect(token, isNull);
    });

    test('caches read values', () async {
      const token = 'cached_token';
      const expirationDateStr = '2024-03-21T12:00:00Z';

      when(() => mockStorage.read(key: 'kratos_login_token')).thenAnswer(
        (_) async => token,
      );
      when(() => mockStorage.read(key: 'kratos_token_expiration')).thenAnswer(
        (_) async => expirationDateStr,
      );

      final firstRead = await mockCredentialsStorage.read();
      final secondRead = await mockCredentialsStorage.read();
      final thirdRead = await mockCredentialsStorage.read();

      expect(firstRead, token);
      expect(secondRead, token);
      expect(thirdRead, token);
      verify(() => mockStorage.read(key: 'kratos_login_token')).called(1);
    });

    test('updates cache on save', () async {
      const oldToken = 'old_token';
      const newToken = 'new_token';

      await temporaryCredentialsStorage.save(
        credentials: oldToken,
        expirationDate: '2024-03-21T12:00:00Z',
      );
      final beforeSave = await temporaryCredentialsStorage.read();
      await temporaryCredentialsStorage.save(
        credentials: newToken,
        expirationDate: '2024-03-21T12:00:00Z',
      );
      final afterSave = await temporaryCredentialsStorage.read();

      expect(beforeSave, oldToken);
      expect(afterSave, newToken);
    });

    test('handles concurrent operations using queue', () async {
      const token1 = 'token1';
      const token2 = 'token2';
      const expiration1 = '2024-03-21T12:00:00Z';
      const expiration2 = '2024-03-22T12:00:00Z';

      when(
        () => mockStorage.write(
          key: any(named: 'key'),
          value: any(named: 'value'),
        ),
      ).thenAnswer(
        (_) async => Future<void>.value(),
      );

      unawaited(
        mockCredentialsStorage.save(
          credentials: token1,
          expirationDate: expiration1,
        ),
      );

      await mockCredentialsStorage.save(
        credentials: token2,
        expirationDate: expiration2,
      );

      verifyInOrder([
        () => mockStorage.write(key: 'kratos_login_token', value: token1),
        () => mockStorage.write(
              key: 'kratos_token_expiration',
              value: expiration1,
            ),
        () => mockStorage.write(key: 'kratos_login_token', value: token2),
        () => mockStorage.write(
              key: 'kratos_token_expiration',
              value: expiration2,
            ),
      ]);
    });

    test('handles multiple concurrent save operations in order', () async {
      Future<void>? lastFuture;
      for (var i = 0; i < 100; i++) {
        lastFuture = temporaryCredentialsStorage.save(
          credentials: 'token$i',
          expirationDate: 'expiration$i',
        );
      }

      await lastFuture;

      verifyInOrder(
        [
          for (var i = 0; i < 100; i++) ...[
            () => temporaryStorage.write(
                  key: 'kratos_login_token',
                  value: 'token$i',
                ),
            () => temporaryStorage.write(
                  key: 'kratos_token_expiration',
                  value: 'expiration$i',
                ),
          ],
        ],
      );

      expect(temporaryStorage.values, hasLength(2));
      expect(temporaryStorage.values['kratos_login_token'], 'token99');
      expect(
        temporaryStorage.values['kratos_token_expiration'],
        'expiration99',
      );
    });
  });
}
