import 'package:flutter/material.dart';

import '../qa/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
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
            children: [
              Question(
                answer_1: "painful",
                answer_2: "likely",
                answer_3: "favorable",
                answer_4: "slippery",
                qus_text: "Which is a synonym of propitious?",
              ),
              Question(
                answer_1: "warlike",
                answer_2: "skilful",
                answer_3: "bloody",
                answer_4: "deadly",
                qus_text: "Which is a synonym of pernicious?",
              ),
              Question(
                answer_1: "custody",
                answer_2: "betrayal",
                answer_3: "quality",
                answer_4: "information",
                qus_text: "Which is a synonym of perfidy?",
              ),
            ],
          ),
        ));
  }
}
