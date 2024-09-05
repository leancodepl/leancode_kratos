abstract class DataState<T> {
  const DataState({this.data});

  final T? data;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess({super.data});
}

class DataFailed<T> extends DataState<T> {
  const DataFailed({super.data});
}
