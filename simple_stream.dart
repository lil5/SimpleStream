import 'dart:async';

class SimpleStream<T> {
  late StreamController<T> _controller;
  late Stream<T> _stream;
  SimpleStream() {
    _controller = StreamController<T>.broadcast();
    _stream = _controller.stream;
  }

  StreamSubscription<T> listen(
    void Function(T)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return _stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }

  void emit(T event) {
    _controller.add(event);
  }
}
