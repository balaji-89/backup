import 'dart:async';

class ExamBloc implements BaseBloc {
  final _answerController = StreamController<String>();

  Function(String) get answerChanged => _answerController.sink.add;

  Stream<String> get answerStream => _answerController.stream;

  @override
  void dispose() {
    _answerController?.close();
  }
}

abstract class BaseBloc {
  void dispose();
}
