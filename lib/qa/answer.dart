import 'package:flutter/cupertino.dart';

class Answer {
  Widget _answer = Text("Emtpy Answer!");
  bool _isCorrectAnswer = false;

  Answer({
    required Widget answer,
    bool isCorrectAnswer = false,
  }) {
    _answer = answer;
    _isCorrectAnswer = isCorrectAnswer;
  }

  Widget getAnswer() {
    return _answer;
  }

  bool isCorrectAnswer() {
    return _isCorrectAnswer;
  }
}
