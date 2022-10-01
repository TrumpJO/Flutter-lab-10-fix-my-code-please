import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

/// 1- try to add three different tabs - each one has it's own question and answers.
/// 2- add some style like text family - images - and any other widget you like.
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
