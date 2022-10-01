import 'package:flutter/material.dart';

import '../qa/question/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    List<Question> _questionsList = [];
    _questionsList.add(Question(questionText: "Q 1", answersList: []));
    _questionsList.add(Question(questionText: "Q 2", answersList: []));
    _questionsList.add(Question(questionText: "Q 3", answersList: []));
    // debugPrint("questionsList Length = ${questionsList.length}");
    return DefaultTabController(
      length: _questionsList.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Icon(Icons.question_answer),
            Icon(Icons.question_answer),
            Icon(Icons.question_answer),
          ]),
          title: Text("Questions"),
        ),
        body: TabBarView(
          children: _getQuestions(_questionsList),
          // children: [
          //   Question(
          //     answer_1: "painfulaaaaaa",
          //     answer_2: "likely",
          //     answer_3: "favorable",
          //     answer_4: "slippery",
          //     questionText: "Which is a synonym of propitious?",
          //   ),
          //   Question(
          //     answer_1: "warlike",
          //     questionText: "skilful",
          //     answer_3: "bloody",
          //     answer_4: "deadly",
          //     answer_2: "Which is a synonym of pernicious?",
          //   ),
          //   Question(
          //     answer_1: "custody",
          //     questionText: "betrayal",
          //     answer_3: "quality",
          //     answer_4: "information",
          //     answer_2: "Which is a synonym of perfidy?",
          //   ),
          // ],
        ),
      ),
    );
  }

  // ToContinue
  List<Widget> _getQuestions(List<Question> questionsList) {
    List<Widget> _questionsWidgetList = [];
    for (var element in questionsList) {
      _questionsWidgetList.add(
        Text("${element}"),
      );
    }
    return _questionsWidgetList;
  }
}
