import 'dart:async';

class AsyncQueue<T> {
  Completer<T>? _completer;

  Future<T> execute(Future<T> Function() action) async {
    while (_completer != null) {
      try {
        await _completer!.future;
      } catch (_) {
        // Ignores caught errors because it is handled below
      }
    }
    try {
      _completer = Completer<T>();

      final result = await action();
      _completer!.complete(result);
      return result;
    } catch (error, stackTrace) {
      _completer?.completeError(error, stackTrace);
      rethrow;
    } finally {
      _completer = null;
    }
  }
}
