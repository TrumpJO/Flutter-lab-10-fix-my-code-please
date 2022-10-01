import 'package:flutter/cupertino.dart';

class Answer {
  Widget _answer = Text("Emtpy Answer!");

  Answer({required Widget answer}) {
    _answer = answer;
  }

  Widget getAnswer() {
    return _answer;
  }
}
