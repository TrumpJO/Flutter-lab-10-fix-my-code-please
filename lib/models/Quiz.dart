import 'package:flutter/material.dart';

import '../qa/answer.dart';
import '../qa/question/question.dart';

List<Question> _questionsList = [];

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    // ToDo: delete clearQuestionClassLists method,
    // if there is a way to remove it without
    // having the items stacked when reloaded.
    clearQuestionClassLists();

    var _answerTestSample_NetworkImage = Image(
      image: NetworkImage(
          "https://th.bing.com/th/id/OIP.dwsjFEujyHT2v2h2MZqZjQHaHa?pid=ImgDet&rs=1"),
    );
    var _answerTestSample_QuestionText =
        "Test Questions(1! to 3!):\nText_Sample(1)\nText_Sample(2) | Text_Sample(1)\nText_Sample(3) | Text_Sample(2) | Text_Sample(1)";
    _questionsList.add(
      Question(questionText: _answerTestSample_QuestionText, answersList: [
        Answer(answer: Text("111")),
        Answer(answer: Text("222")),
        Answer(answer: _answerTestSample_NetworkImage),
        Answer(answer: _answerTestSample_NetworkImage),
        Answer(answer: _answerTestSample_NetworkImage),
        Answer(answer: _answerTestSample_NetworkImage),
        Answer(answer: Text("111")),
        Answer(answer: Text("222")),
        Answer(answer: Text("333")),
        Answer(answer: _answerTestSample_NetworkImage),
        Answer(answer: Text("111")),
        Answer(answer: Text("222")),
      ]),
    );
    _questionsList.add(
      Question(
        questionText: "Q 2",
        answersList: [],
        icon: Icon(Icons.abc),
      ),
    );
    _questionsList.add(
      Question(
        questionText: "Q 3",
        answersList: [],
      ),
    );

    return DefaultTabController(
      length: _questionsList.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: Question.getIconsList(),
          ),
          title: Text("Questions"),
        ),
        body: TabBarView(
          children: _getQuestionsAndAnswers(),
        ),
      ),
    );
  }

  List<Widget> _getQuestionsAndAnswers() {
    List<Widget> widgetList = [];
    for (var element in _questionsList) {
      widgetList.add(
        element.getAnswers_GridList(
          question: element.getQuestion(),
        ),
      );
    }
    return widgetList;
  }

  void clearQuestionClassLists() {
    _questionsList.clear();
    Question.clearIconsList();
  }
}
