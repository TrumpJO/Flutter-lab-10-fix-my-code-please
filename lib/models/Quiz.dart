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

    _questionsList.add(
      Question.getAnswerTestSample(crossAxisCount: 3),
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
