import 'package:flutter/material.dart';

class Answer {
  Widget _answer = Text("Emtpy Answer!");
  bool _isCorrectAnswer = false;
  Color _optionColor = Colors.black;

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

  Color getOptionColor() {
    return _optionColor;
  }

  void setOptionColor() {
    if (this.isCorrectAnswer()) {
      _optionColor = Colors.green;
    } else {
      _optionColor = Colors.red;
    }
  }
}

class AnswerWidget extends StatefulWidget {
  const AnswerWidget({super.key});

  @override
  State<AnswerWidget> createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Text("AnswerWidget"),
    );
  }
}
