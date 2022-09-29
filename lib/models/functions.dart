import 'package:flutter/material.dart';

class myalert extends StatelessWidget {
  myalert(this.myfunction);
  Function()? myfunction;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("here we go"),
          ),
        ],
      ),
    );
  }
}
