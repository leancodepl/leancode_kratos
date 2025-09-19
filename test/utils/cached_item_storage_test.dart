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
    });

    test('subsequent reads use cache', () async {
      const expectedValue = 'test_value';
      when(() => mockStorage.read(key: testKey)).thenAnswer(
        (_) async => expectedValue,
      );

      await storageItem.read();
      await storageItem.read();

      verify(() => mockStorage.read(key: testKey)).called(1);
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
    });

    test('save with null clears value', () async {
      when(() => mockStorage.write(key: testKey, value: null)).thenAnswer(
        (_) async {},
      );

      await storageItem.save(value: null);
      final result = await storageItem.read();

      expect(result, isNull);
      verify(() => mockStorage.write(key: testKey, value: null)).called(1);
      verifyNever(() => mockStorage.read(key: testKey));
    });

    test('clear removes value from storage and cache', () async {
      const initialValue = 'initial_value';
      when(() => mockStorage.read(key: testKey)).thenAnswer(
        (_) async => initialValue,
      );
      when(() => mockStorage.delete(key: testKey)).thenAnswer(
        (_) async {},
      );

      final beforeClear = await storageItem.read();
      await storageItem.clear();
      final afterClear = await storageItem.read();

      expect(beforeClear, equals(initialValue));
      expect(afterClear, isNull);
      verify(() => mockStorage.read(key: testKey)).called(1);
      verify(() => mockStorage.delete(key: testKey)).called(1);
    });

    test('cache is updated after save', () async {
      const value = 'value';

      when(() => mockStorage.write(key: testKey, value: any(named: 'value')))
          .thenAnswer(
        (_) async {},
      );

      await storageItem.save(value: value);
      final afterSave = await storageItem.read();

      expect(afterSave, equals(value));
    });

    test('propagates storage read errors', () async {
      when(() => mockStorage.read(key: testKey))
          .thenThrow(Exception('Storage error'));

      await expectLater(
        storageItem.read(),
        throwsA(isA<Exception>()),
      );
    });
  });
}
