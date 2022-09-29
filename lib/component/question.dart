import 'package:flutter/material.dart';

class Qus extends StatelessWidget {
  Qus({
    required this.qus_text,
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
  });

  String? qus_text;
  String? answer_1;

  String? answer_2;

  String? answer_3;

  String? answer_4;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          height: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/a6/88/66/a68866bc1252474fa15ed84b149b34b8.jpg"))),
          child: Text(
            "$qus_text",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.orange),
          ),
        ),
        Divider(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Center(
                            child: Text("good job"),
                          ),
                        );
                      });
                },
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Center(
                              child: Text("try again"),
                            ),
                          );
                        });
                  },
                  child: Text(
                    "$answer_1",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Text("$answer_2", style: TextStyle(fontSize: 18))
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text("$answer_3", style: TextStyle(fontSize: 18)),
              SizedBox(
                width: 70,
              ),
              Text("$answer_4", style: TextStyle(fontSize: 18))
            ],
          ),
        )
      ],
    );
  }
}
