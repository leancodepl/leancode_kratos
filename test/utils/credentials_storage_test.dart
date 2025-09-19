import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leancode_kratos_client/src/utils/credentials_storage.dart';
import 'package:mocktail/mocktail.dart';

class _MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  setUpAll(() {
    registerFallbackValue('any_key');
    registerFallbackValue('any_value');
  });
  group('FlutterSecureCredentialsStorage', () {
    late FlutterSecureStorage mockStorage;
    late FlutterSecureCredentialsStorage mockCredentialsStorage;

    setUp(() {
      mockStorage = _MockFlutterSecureStorage();
      mockCredentialsStorage =
          FlutterSecureCredentialsStorage(storage: mockStorage);
    });

    test('clears all stored data', () async {
      when(() => mockStorage.delete(key: any(named: 'key')))
          .thenAnswer((_) async => {});

      await mockCredentialsStorage.clear();
      verify(
        () => mockStorage.delete(key: any(named: 'key')),
      ).called(2);
    });

    test('reads expiration date', () async {
      const expirationDateStr = '2024-03-21T12:00:00Z';

      when(() => mockStorage.read(key: 'kratos_token_expiration')).thenAnswer(
        (_) async => expirationDateStr,
      );

      final result = await mockCredentialsStorage.readExpirationDate();

      expect(result, equals(DateTime.parse(expirationDateStr)));
    });

    test('updates cache on save', () async {
      when(
        () => mockStorage.write(
          key: any(named: 'key'),
          value: any(named: 'value'),
        ),
      ).thenAnswer((_) async => {});

      await mockCredentialsStorage.save(
        credentials: 'test',
        expirationDate: '2024-03-21T12:00:00Z',
      );

      await mockCredentialsStorage.read();

      verify(
        () => mockStorage.write(
          key: any(named: 'key'),
          value: any(named: 'value'),
        ),
      ).called(2);
      verifyNever(() => mockStorage.read(key: any(named: 'key')));
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

      await mockCredentialsStorage.read();
      await mockCredentialsStorage.read();

      verify(
        () => mockStorage.read(key: any(named: 'key')),
      ).called(1);
    });

    test('handles concurrent operations using queue', () async {
      const token1 = 'token1';
      const token2 = 'token2';
      const expiration1 = '2024-03-21T12:00:00Z';
      const expiration2 = '2024-03-22T12:00:00Z';

      final completer = Completer<void>();

      var isToken2Completed = false;

      when(
        () => mockStorage.write(
          key: any(named: 'key'),
          value: any(
            named: 'value',
            that: isIn([token1, expiration1]),
          ),
        ),
      ).thenAnswer(
        (_) => completer.future,
      );

      when(
        () => mockStorage.write(
          key: any(named: 'key'),
          value: any(
            named: 'value',
            that: isIn([token2, expiration2]),
          ),
        ),
      ).thenAnswer(
        (invocation) async {
          if (invocation.namedArguments[const Symbol('value')] == token2) {
            isToken2Completed = true;
          }
        },
      );

      unawaited(
        mockCredentialsStorage.save(
          credentials: token1,
          expirationDate: expiration1,
        ),
      );

      final future = mockCredentialsStorage.save(
        credentials: token2,
        expirationDate: expiration2,
      );

      await Future<void>.delayed(Duration.zero);

      expect(isToken2Completed, isFalse);

      completer.complete();

      await future;

      expect(isToken2Completed, isTrue);
    });
  });
}
