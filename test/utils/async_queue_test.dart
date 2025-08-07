import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:leancode_kratos_client/src/utils/async_queue.dart';

void main() {
  group('AsyncQueue', () {
    late AsyncQueue<int> asyncQueue;

    setUp(() {
      asyncQueue = AsyncQueue<int>();
    });

    group('basic functionality', () {
      test('should execute single action and return result', () async {
        // Arrange
        const expectedResult = 42;

        // Act
        final actualResult = await asyncQueue.execute(() async {
          return expectedResult;
        });

        // Assert
        expect(actualResult, equals(expectedResult));
      });

      test('should execute action that takes time', () async {
        // Arrange
        const expectedResult = 100;
        const delayDuration = Duration(milliseconds: 50);

        // Act
        final stopwatch = Stopwatch()..start();
        final actualResult = await asyncQueue.execute(() async {
          await Future<void>.delayed(delayDuration);
          return expectedResult;
        });
        stopwatch.stop();

        // Assert
        expect(actualResult, equals(expectedResult));
        expect(stopwatch.elapsedMilliseconds, greaterThanOrEqualTo(50));
      });
    });

    group('queue behavior', () {
      test('should execute multiple actions sequentially', () async {
        final executionOrder = <int>[];
        final futures = <Future<int>>[];

        for (var i = 0; i < 3; i++) {
          futures.add(
            asyncQueue.execute(() async {
              await Future<void>.delayed(const Duration(microseconds: 10));
              executionOrder.add(i);
              return i;
            }),
          );
        }

        await Future.wait(futures);
        expect(executionOrder, equals([0, 1, 2]));
      });

      test('should maintain execution order even with different delays',
          () async {
        // Arrange
        final stringQueue = AsyncQueue<String>();
        final executionOrder = <String>[];
        final futures = [
          stringQueue.execute(() async {
            await Future<void>.delayed(const Duration(milliseconds: 50));
            executionOrder.add('first');
            return 'first';
          }),
          stringQueue.execute(() async {
            await Future<void>.delayed(const Duration(milliseconds: 10));
            executionOrder.add('second');
            return 'second';
          }),
          stringQueue.execute(() async {
            executionOrder.add('third');
            return 'third';
          }),
        ];

        final results = await Future.wait(futures);

        // Assert
        expect(results, equals(['first', 'second', 'third']));
        expect(executionOrder, equals(['first', 'second', 'third']));
      });

      test('should handle concurrent execute calls', () async {
        // Arrange
        final executionTimes = <DateTime>[];
        final futures = <Future<int>>[];

        // Act
        for (int i = 0; i < 5; i++) {
          futures.add(
            asyncQueue.execute(() async {
              executionTimes.add(DateTime.now());
              await Future<void>.delayed(const Duration(microseconds: 20));
              return i;
            }),
          );
        }

        final results = await Future.wait(futures);

        // Assert
        expect(results, equals([0, 1, 2, 3, 4]));
        expect(executionTimes.length, equals(5));

        // Verify that executions happened in sequence (not concurrently)
        for (int i = 1; i < executionTimes.length; i++) {
          expect(
            executionTimes[i].isAfter(executionTimes[i - 1]),
            isTrue,
            reason: 'Execution $i should happen after execution ${i - 1}',
          );
        }
      });
    });

    group('error handling', () {
      test('should continue processing after an error', () async {
        final results = <dynamic>[];
        final futures = <Future<int>>[];

        for (var i = 0; i < 3; i++) {
          futures
            ..add(
              asyncQueue.execute(() async {
                await Future<void>.delayed(const Duration(milliseconds: 10));
                throw Exception('test exception $i');
              }),
            )
            ..add(
              asyncQueue.execute(() async {
                await Future<void>.delayed(const Duration(milliseconds: 10));
                return i;
              }),
            );
        }

        for (final future in futures) {
          try {
            final result = await future;
            results.add(result);
          } catch (e) {
            results.add(e.toString());
          }
        }

        // Assert
        expect(
          results,
          equals(
            [
              'Exception: test exception 0',
              0,
              'Exception: test exception 1',
              1,
              'Exception: test exception 2',
              2,
            ],
          ),
        );
      });
    });

    group('edge cases', () {
      test('should handle empty action', () async {
        // Arrange
        final nullableQueue = AsyncQueue<int?>();

        // Act
        final result = await nullableQueue.execute(() async {
          return null;
        });

        // Assert
        expect(result, isNull);
      });

      test('should handle synchronous action', () async {
        // Arrange
        const expectedResult = 123;

        // Act
        final result = await asyncQueue.execute(() async => expectedResult);

        // Assert
        expect(result, equals(expectedResult));
      });

      test('should work with different generic types', () async {
        // Arrange
        final boolQueue = AsyncQueue<bool>();
        final listQueue = AsyncQueue<List<String>>();
        final mapQueue = AsyncQueue<Map<String, int>>();

        // Act
        final boolResult = await boolQueue.execute(() async => true);
        final listResult = await listQueue.execute(() async => ['a', 'b']);
        final mapResult = await mapQueue.execute(() async => {'key': 1});

        // Assert
        expect(boolResult, isTrue);
        expect(listResult, equals(['a', 'b']));
        expect(mapResult, equals({'key': 1}));
      });

      test('should handle nullable return types', () async {
        // Arrange
        final nullableQueue = AsyncQueue<String?>();

        // Act
        final nullResult = await nullableQueue.execute(() async => null);
        final nonNullResult = await nullableQueue.execute(() async => 'test');

        // Assert
        expect(nullResult, isNull);
        expect(nonNullResult, equals('test'));
      });
    });

    group('Multiple actions', () {
      test('Should execute multiple actions sequentially', () async {
        final test = _MultipleActionsTest();
        unawaited(test.save(2));
        final futureRead = test.read();
        final futureClear = test.clear();

        await futureRead;
        expect(test.value, equals(2));
        await futureClear;
        expect(test.value, isNull);
      });
    });
  });
}

class _MultipleActionsTest {
  _MultipleActionsTest();

  final AsyncQueue<int?> asyncQueue = AsyncQueue<int?>();

  int? value = 0;

  Future<void> save(int value) async {
    await asyncQueue.execute(() async {
      await Future<void>.delayed(const Duration(microseconds: 500));
      return this.value = value;
    });
  }

  Future<int?> read() async {
    return asyncQueue.execute(() async {
      await Future<void>.delayed(const Duration(microseconds: 10));
      return value;
    });
  }

  Future<void> clear() async {
    await asyncQueue.execute(() async {
      await Future<void>.delayed(const Duration(microseconds: 50));
      return value = null;
    });
  }
}
