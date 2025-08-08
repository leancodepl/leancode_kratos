import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:leancode_kratos_client/src/utils/async_queue.dart';

void main() {
  group('AsyncQueue', () {
    late AsyncQueue asyncQueue;

    setUp(() {
      asyncQueue = AsyncQueue();
    });

    test('should execute single action and return result', () async {
      const expectedResult = 42;

      final actualResult = await asyncQueue.execute(() async {
        return expectedResult;
      });
      expect(actualResult, equals(expectedResult));
    });

    test('should execute multiple actions sequentially', () async {
      final completer = Completer<void>();
      var isSecondActionExecuted = false;

      unawaited(
        asyncQueue.execute(() async {
          await completer.future;
        }),
      );

      final future = asyncQueue.execute(() async {
        isSecondActionExecuted = true;
      });

      await Future<void>.delayed(Duration.zero);

      expect(isSecondActionExecuted, isFalse);

      completer.complete();

      await future;

      expect(isSecondActionExecuted, isTrue);
    });

    test('should continue processing after an error', () async {
      final errorFuture = asyncQueue.execute(() async {
        throw Exception();
      });

      final resultFuture = asyncQueue.execute(() async {
        return 1;
      });

      await expectLater(errorFuture, throwsA(isA<Exception>()));
      expect(await resultFuture, equals(1));
    });
  });
}
