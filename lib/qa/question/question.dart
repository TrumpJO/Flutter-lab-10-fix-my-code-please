import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_10/Home.dart';
import 'package:lab_10/main.dart';
import 'package:lab_10/qa/answer.dart';

class Question {
  static const double TEXT_FONTSIZE = 26;
  static const double QUESTION_HEIGHT = TEXT_FONTSIZE + (TEXT_FONTSIZE / 5);
  static List<Icon> question_IconList = [];

  String _questionText = "Question?";
  List<Answer> _answersList = [];
  Icon _icon = Icon(Icons.question_answer);
  int _crossAxisCount = 3;
  int _questionLines = 1;

  Question({
    required String questionText,
    required List<Answer> answersList,
    Icon icon = const Icon(Icons.question_answer),
    int crossAxisCount = 3,
  }) {
    _questionText = questionText;
    _answersList = answersList;
    _icon = icon;
    question_IconList.add(_icon);
    _crossAxisCount = crossAxisCount;
    _questionLines = _getQuestionLines();
  }

  int _getQuestionLines() => ('\n'.allMatches(_questionText).length) + 1;

  Widget getQuestion() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        height: QUESTION_HEIGHT * _questionLines,
        color: Colors.black,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            _questionText,
            style: TextStyle(
              fontSize: TEXT_FONTSIZE,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        alignment: Alignment.topCenter,
      ),
    );
  }

  Widget getAnswers_GridList({required Widget question}) {
    return Stack(children: [
      question,
      Padding(
        padding: EdgeInsets.only(top: (QUESTION_HEIGHT * _questionLines)),
        child: GridView.builder(
          itemCount: _answersList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _crossAxisCount,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 0.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [_getAnswer(index), _getOptionNum(index)],
            );
          },
        ),
      ),
    ]);
  }

  Expanded _getAnswer(int index) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: _answersList[index].getAnswer(),
      ),
    );
  }

  Container _getOptionNum(int index) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Text(
        "Option: ${index + 1}",
        style: TextStyle(
          color: Colors.white,
          fontSize: TEXT_FONTSIZE / 2,
        ),
      ),
    );
  }

  static List<Widget> getIconsList() {
    return question_IconList;
  }

  static void clearIconsList() {
    question_IconList.clear();
  }
}
