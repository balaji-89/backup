import 'dart:async';

class McqBloc implements BaseBloc {
  final _option1Controller = StreamController<bool>();
  final _option2Controller = StreamController<bool>();
  final _option3Controller = StreamController<bool>();

  Function(bool) get option1Changed => _option1Controller.sink.add;
  Function(bool) get option2Changed => _option2Controller.sink.add;
  Function(bool) get option3Changed => _option3Controller.sink.add;

  Stream<bool> get option1Stream => _option1Controller.stream;
  Stream<bool> get option2Stream => _option2Controller.stream;
  Stream<bool> get option3Stream => _option3Controller.stream;

  @override
  void dispose() {
    _option1Controller?.close();
    _option2Controller?.close();
    _option3Controller?.close();
  }
}

abstract class BaseBloc {
  void dispose();
}
