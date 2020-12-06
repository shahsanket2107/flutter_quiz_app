import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What is your nationality?",
      "answers": ["Indian", "Pakistani", "Chinese", "American"],
    },
    {
      "questionText": "What is your favourite color?",
      "answers": ["Blue", "Red", "Green", "Yellow"],
    },
    {
      "questionText": "What is your gender?",
      "answers": ["Male", "Female", "Other"],
    }
  ];

  var questionIndex = 0;

// _ (underscore) before a variable name or a class name denotes that it is private

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    if (questionIndex < _questions.length) {
      print("More questions are left");
    } else {
      print("No more questions left");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('First App'),
          ),
          body: questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: answerQuestion,
                  questionIndex: questionIndex,
                  questions: _questions,
                )
              : Result()),
    );
  }
}
