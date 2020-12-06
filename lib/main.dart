import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

// _ (underscore) before a variable name or a class name denotes that it is private

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('First App'),
          ),
          body: Column(
            children: [
              Question(questions[questionIndex]['questionText']),
              ...(questions[questionIndex]['answers'] as List<String>)
                  .map((answer) {
                print(answer);
                return Answer(answerQuestion, answer);
              })
            ],
          )),
    );
  }
}
