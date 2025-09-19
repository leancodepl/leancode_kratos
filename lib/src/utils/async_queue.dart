import 'dart:async';

/// A queue that executes actions sequentially.
///
/// This is useful to avoid race conditions when accessing shared resources.
class AsyncQueue {
  Completer<void>? _completer;

  Future<T> execute<T>(Future<T> Function() action) async {
    while (_completer != null) {
      await _completer?.future;
    }

    try {
      _completer = Completer<void>();

      return await action();
    } finally {
      _completer?.complete();
      _completer = null;
    }
  }
}
