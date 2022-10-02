import 'package:flutter/material.dart';

import '../qa/answer.dart';
import '../qa/question/question.dart';

List<Question> _questionsList = [];
void addQuestion(Question question) {
  _questionsList.add(question);
}

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

    addQuestion(
      Question.getAnswerTestSample(crossAxisCount: 3),
    );
    addQuestion(
      Question(
        questionText: "10 + 5 = ?",
        answersList: [
          Answer(
              answer: Text(
            "12",
            style: TextStyle(fontSize: 40),
          )),
          Answer(
              answer: Text(
            "13",
            style: TextStyle(fontSize: 40),
          )),
          Answer(
              answer: Text(
            "14",
            style: TextStyle(fontSize: 40),
          )),
          Answer(
              answer: Text(
                "15",
                style: TextStyle(fontSize: 40),
              ),
              isCorrectAnswer: true),
          Answer(
              answer: Text(
            "16",
            style: TextStyle(fontSize: 40),
          )),
        ],
        icon: Icon(Icons.numbers),
      ),
    );
    addQuestion(
      Question(
        icon: Icon(Icons.message),
        questionText:
            "Which of the following options is:\nWilliam Shakespeare?",
        answersList: [
          Answer(
            answer: Image(
              image: NetworkImage(
                  "https://th.bing.com/th/id/R.bb9ff6b60658885b351bc7d40ddcafae?rik=LoDfXBzYJ%2bWHQA&pid=ImgRaw&r=0"),
            ),
          ),
          Answer(
            answer: Image(
              image: NetworkImage(
                  "https://pbs.twimg.com/media/DOxH0RwXUAAsjov.jpg"),
            ),
            isCorrectAnswer: true,
          ),
          Answer(
            answer: Image(
              image: NetworkImage(
                  "https://th.bing.com/th/id/R.18f02f756a511a48da3851bcf621e34f?rik=pJEuja%2fmsJqEJw&pid=ImgRaw&r=0"),
            ),
          ),
          Answer(
            answer: Image(
              image: NetworkImage(
                  "https://th.bing.com/th/id/OIP.aDgJvcG3Fkb5k70jx3-p_gHaE8?pid=ImgDet&rs=1"),
            ),
          ),
          Answer(
            answer: Image(
              image: NetworkImage(
                  "https://th.bing.com/th/id/R.7528590b18bfdde6e72dba0c6e7cdaf4?rik=Aqv4cLH1hwlfsQ&pid=ImgRaw&r=0"),
            ),
          ),
          Answer(
            answer: Image(
              image: NetworkImage(
                  "https://th.bing.com/th/id/OIP.jYvaSDOSNWV5Kr5lnRo8xQHaHa?pid=ImgDet&rs=1"),
            ),
            isCorrectAnswer: true,
          ),
        ],
      ),
    );
    addQuestion(
      Question(
        questionText: "Best Pets for kids?",
        icon: Icon(Icons.pets),
        crossAxisCount: 1,
        answersList: [
          Answer(
            answer: Image(
              image: NetworkImage(
                  "https://media.giphy.com/media/vFKqnCdLPNOKc/giphy.gif"),
            ),
          ),
          Answer(
            answer: Image(
              image: NetworkImage(
                  "https://media.giphy.com/media/oQzmXr9FploiZmZshV/giphy-downsized.gif"),
            ),
          ),
          Answer(
            answer: Image(
              image: NetworkImage(
                  "https://media.giphy.com/media/cKP8badewx37JpgrQN/giphy-downsized.gif"),
            ),
          ),
        ],
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
        element.getQA_GridList(
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
