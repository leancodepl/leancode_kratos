import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leancode_kratos_client/src/utils/credentials_storage.dart';
import 'package:mocktail/mocktail.dart';

class _MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  group('CachedItemStorage', () {
    late FlutterSecureStorage mockStorage;
    late CachedItemStorage storageItem;
    const testKey = 'test_key';

    setUp(() {
      mockStorage = _MockFlutterSecureStorage();
      storageItem = CachedItemStorage(
        key: testKey,
        storage: mockStorage,
      );
    });

    test('initial read fetches from storage', () async {
      const expectedValue = 'test_value';
      when(() => mockStorage.read(key: testKey)).thenAnswer(
        (_) async => expectedValue,
      );

      final result = await storageItem.read();

      expect(result, equals(expectedValue));
      verify(() => mockStorage.read(key: testKey)).called(1);
      verifyNever(
        () => mockStorage.write(key: testKey, value: any(named: 'value')),
      );
      verifyNever(() => mockStorage.delete(key: testKey));
    });

    test('subsequent reads use cache', () async {
      const expectedValue = 'test_value';
      when(() => mockStorage.read(key: testKey)).thenAnswer(
        (_) async => expectedValue,
      );

      final firstRead = await storageItem.read();
      final secondRead = await storageItem.read();
      final thirdRead = await storageItem.read();

      expect(firstRead, equals(expectedValue));
      expect(secondRead, equals(expectedValue));
      expect(thirdRead, equals(expectedValue));
      verify(() => mockStorage.read(key: testKey)).called(1);
      verifyNever(
        () => mockStorage.write(key: testKey, value: any(named: 'value')),
      );
      verifyNever(() => mockStorage.delete(key: testKey));
    });

    test('save updates both storage and cache', () async {
      const newValue = 'new_value';
      when(() => mockStorage.write(key: testKey, value: newValue)).thenAnswer(
        (_) async => Future<void>.value(),
      );

      await storageItem.save(value: newValue);
      final result = await storageItem.read();

      expect(result, equals(newValue));
      verify(() => mockStorage.write(key: testKey, value: newValue)).called(1);
      verifyNever(() => mockStorage.read(key: testKey));
      verifyNever(() => mockStorage.delete(key: testKey));
    });

    test('save with null clears value', () async {
      when(() => mockStorage.write(key: testKey, value: null)).thenAnswer(
        (_) async => Future<void>.value(),
      );

      await storageItem.save(value: null);
      final result = await storageItem.read();

      expect(result, isNull);
      verify(() => mockStorage.write(key: testKey, value: null)).called(1);
      verifyNever(() => mockStorage.read(key: testKey));
      verifyNever(() => mockStorage.delete(key: testKey));
    });

    test('clear removes value from storage and cache', () async {
      const initialValue = 'initial_value';
      when(() => mockStorage.read(key: testKey)).thenAnswer(
        (_) async => initialValue,
      );
      when(() => mockStorage.delete(key: testKey)).thenAnswer(
        (_) async => Future<void>.value(),
      );

      final beforeClear = await storageItem.read();
      await storageItem.clear();
      final afterClear = await storageItem.read();

      expect(beforeClear, equals(initialValue));
      expect(afterClear, isNull);
      verify(() => mockStorage.read(key: testKey)).called(1);
      verify(() => mockStorage.delete(key: testKey)).called(1);
      verifyNever(
          () => mockStorage.write(key: testKey, value: any(named: 'value')));
    });

    test('cache is updated after save', () async {
      const firstValue = 'first_value';
      const secondValue = 'second_value';

      when(() => mockStorage.read(key: testKey)).thenAnswer(
        (_) async => firstValue,
      );
      when(() => mockStorage.write(key: testKey, value: any(named: 'value')))
          .thenAnswer(
        (_) async => Future<void>.value(),
      );

      await storageItem.save(value: firstValue);
      final afterFirstSave = await storageItem.read();
      await storageItem.save(value: secondValue);
      final afterSecondSave = await storageItem.read();

      expect(afterFirstSave, equals(firstValue));
      expect(afterSecondSave, equals(secondValue));
      verifyNever(() => mockStorage.read(key: testKey));
      verifyNever(() => mockStorage.delete(key: testKey));
      verify(() => mockStorage.write(key: testKey, value: firstValue))
          .called(1);
      verify(() => mockStorage.write(key: testKey, value: secondValue))
          .called(1);
    });

    test('propagates storage read errors', () async {
      when(() => mockStorage.read(key: testKey))
          .thenThrow(Exception('Storage error'));

      try {
        await storageItem.read();
      } catch (e) {
        expect(e, isA<Exception>());
      }

      verify(() => mockStorage.read(key: testKey)).called(1);
      verifyNever(
          () => mockStorage.write(key: testKey, value: any(named: 'value')));
      verifyNever(() => mockStorage.delete(key: testKey));
    });

    test("read error doesn't affect cache", () async {
      when(() => mockStorage.read(key: testKey)).thenAnswer(
        (_) async => throw Exception('Storage error'),
      );

      try {
        await storageItem.read();
      } catch (e) {
        expect(e, isA<Exception>());
      }

      final result = storageItem.state;

      expect(result, isA<CacheUninitialized>());
      verify(() => mockStorage.read(key: testKey)).called(1);
      verifyNever(
          () => mockStorage.write(key: testKey, value: any(named: 'value')));
      verifyNever(() => mockStorage.delete(key: testKey));
    });

    test("write error doesn't affect cache", () async {
      when(() => mockStorage.write(key: testKey, value: any(named: 'value')))
          .thenAnswer(
        (_) async => throw Exception('Storage error'),
      );

      try {
        await storageItem.save(value: 'test_value');
      } catch (e) {
        expect(e, isA<Exception>());
      }

      final result = storageItem.state;

      expect(result, isA<CacheUninitialized>());
      verify(() => mockStorage.write(key: testKey, value: 'test_value'))
          .called(1);
      verifyNever(() => mockStorage.delete(key: testKey));
      verifyNever(() => mockStorage.read(key: testKey));
    });

    test("clear error doesn't affect cache", () async {
      when(() => mockStorage.write(key: testKey, value: any(named: 'value')))
          .thenAnswer(
        (_) async => 'test_value',
      );
      when(() => mockStorage.delete(key: testKey)).thenAnswer(
        (_) async => throw Exception('Storage error'),
      );

      await storageItem.save(value: 'test_value');

      try {
        await storageItem.clear();
      } catch (e) {
        expect(e, isA<Exception>());
      }

      final result = storageItem.state;
      expect(result, isA<CacheInitialized>());
      expect((result as CacheInitialized).value, 'test_value');
      verify(() => mockStorage.delete(key: testKey)).called(1);
      verifyNever(() => mockStorage.read(key: testKey));
    });
  });
}
