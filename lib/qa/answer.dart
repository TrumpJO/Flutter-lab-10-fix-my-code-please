import 'package:flutter/material.dart';

class Answer {
  Widget _answer = Text("Emtpy Answer!");
  bool _isCorrectAnswer = false;
  static const Color _defOption_Color = Colors.black;
  Color _optionCorrect_Color = Colors.green;
  Color _optionNotCorrect_Color = Colors.red;
  Color _optionColor = _defOption_Color;

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

  Color getOptionColor() {
    return _optionColor;
  }

  bool isCorrectAnswer() {
    return _isCorrectAnswer;
  }

  void setOptionColor_BasedOnIsAnswerCorrect() {
    if (this._isCorrectAnswer) {
      _optionColor = _optionCorrect_Color;
    } else {
      _optionColor = _optionNotCorrect_Color;
    }
  }
}
