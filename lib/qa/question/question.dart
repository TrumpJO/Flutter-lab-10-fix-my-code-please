import 'package:flutter/material.dart';
import 'package:lab_10/qa/question/structures/gridlist.dart';

String _questionText = "Question?";
List _answersList = [];

class Question extends StatefulWidget {
  Question({
    required String questionText,
    required List answersList,
    // this.answer_1,
    // this.answer_2,
    // this.answer_3,
    // this.answer_4,
  }) {
    _questionText = questionText;
    _answersList = answersList;
  }

  // String? answer_1;
  // String? answer_2;
  // String? answer_3;
  // String? answer_4;

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Gridlist();
  }

  ListView old_returnWidget() {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(
                  "https://i.pinimg.com/originals/a6/88/66/a68866bc1252474fa15ed84b149b34b8.jpg"),
            ),
          ),
          child: Text(
            "${_questionText} ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.amber,
            ),
          ),
        ),
        Divider(
          height: 50,
        ),
        // Padding(
        //   padding: const EdgeInsets.all(20.0),
        //   child: Row(
        //     children: [
        //       GestureDetector(
        //         onTap: () {
        //           showDialog(
        //               context: context,
        //               builder: (context) {
        //                 return AlertDialog(
        //                   content: Center(
        //                     child: Text("good job"),
        //                   ),
        //                 );
        //               });
        //         },
        //         child: GestureDetector(
        //           onTap: () {
        //             showDialog(
        //                 context: context,
        //                 builder: (context) {
        //                   return AlertDialog(
        //                     content: Center(
        //                       child: Text("try again"),
        //                     ),
        //                   );
        //                 });
        //           },
        //           child: Text(
        //             "${widget.answer_1}",
        //             style: TextStyle(fontSize: 18),
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         width: 80,
        //       ),
        //       Text("${widget.answer_2}", style: TextStyle(fontSize: 18))
        //     ],
        //   ),
        // ),
        // SizedBox(
        //   height: 40,
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(20.0),
        //   child: Row(
        //     children: [
        //       Text("${widget.answer_3}", style: TextStyle(fontSize: 18)),
        //       SizedBox(
        //         width: 70,
        //       ),
        //       Text("${widget.answer_4}", style: TextStyle(fontSize: 18))
        //     ],
        //   ),
        // )
      ],
    );
  }
}
