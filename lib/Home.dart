import 'package:flutter/material.dart';
import 'models/quiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://image.freepik.com/free-photo/flat-lay-workplace-arrangement-purple-background-with-copy-space_23-2148404535.jpg"),
          ),
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Center(
                          child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Quiz(),
                                  ),
                                );
                              },
                              icon: Icon(Icons.people),
                              label: Text("Go to Quiz page"))),
                    );
                  });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 8),
              child: Container(
                color: Colors.white.withAlpha(160),
                child: Text(
                  "Click me if you want\n to start the Quiz",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
