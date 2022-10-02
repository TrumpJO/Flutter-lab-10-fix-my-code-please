import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_10/Home.dart';
import 'package:lab_10/main.dart';
import 'package:lab_10/qa/answer.dart';

class Question {
  static const double TEXT_FONTSIZE = 26;
  static const double QUESTION_HEIGHT = TEXT_FONTSIZE + (TEXT_FONTSIZE / 5);
  static const double SPACE_BETWEEN_OPTIONS_HORIZONTALLY = 14;
  static const double SPACE_BETWEEN_OPTIONS_VERTICALLY = 20;
  static List<Icon> questions_IconList = [];
  // ToDo: Add text background & front Colors.

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
    questions_IconList.add(_icon);
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

  Widget getQA_GridList({required Widget question}) {
    return Stack(children: [
      question,
      Padding(
        padding: EdgeInsets.only(top: (QUESTION_HEIGHT * _questionLines)),
        child: GridView.builder(
          itemCount: _answersList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _crossAxisCount,
            crossAxisSpacing: SPACE_BETWEEN_OPTIONS_HORIZONTALLY,
            mainAxisSpacing: SPACE_BETWEEN_OPTIONS_VERTICALLY,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: InkWell(
                child: Column(children: [
                  _getAnswer(index),
                  _getOptionContainer(index),
                ]),
                onTap: () {
                  print("Tapped");
                  _answersList[index].setOptionColor_BasedOnIsAnswerCorrect();
                },
              ),
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

  Container _getOptionContainer(int index) {
    return Container(
      color: _answersList[index].getOptionColor(),
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
    return questions_IconList;
  }

  static void clearIconsList() {
    questions_IconList.clear();
  }

  static dynamic getAnswerTestSample({int crossAxisCount = 3}) {
    var _answerTestSample_NetworkImage = Image(
      image: NetworkImage(
          "https://th.bing.com/th/id/OIP.dwsjFEujyHT2v2h2MZqZjQHaHa?pid=ImgDet&rs=1"),
    );
    var _answerTestSample_QuestionText =
        "Test Questions Sample:  <----->\n\t12! = ?\n12 + 11 + 10 + 9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1";
    var _answerTestSample_answersList = [
      Answer(answer: Text("111"), isCorrectAnswer: true),
      Answer(answer: Text("222")),
      Answer(answer: _answerTestSample_NetworkImage),
      Answer(answer: _answerTestSample_NetworkImage),
      Answer(answer: _answerTestSample_NetworkImage),
      Answer(answer: _answerTestSample_NetworkImage),
      Answer(answer: Text("111"), isCorrectAnswer: true),
      Answer(answer: Text("222")),
      Answer(answer: Text("333")),
      Answer(answer: _answerTestSample_NetworkImage),
      Answer(answer: Text("111"), isCorrectAnswer: true),
      Answer(answer: Text("222")),
    ];

    return Question(
      crossAxisCount: crossAxisCount,
      questionText: _answerTestSample_QuestionText,
      answersList: _answerTestSample_answersList,
    );
  }
}
