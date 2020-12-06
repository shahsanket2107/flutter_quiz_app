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
      "answers": [
        {"text": "Indian", "score": 40},
        {"text": "Pakistani", "score": 20},
        {"text": "Chinese", "score": 10},
        {"text": "American", "score": 30},
      ],
    },
    {
      "questionText": "What is your favourite color?",
      "answers": [
        {"text": "Blue", "score": 40},
        {"text": "Red", "score": 20},
        {"text": "Green", "score": 30},
        {"text": "Yellow", "score": 10}
      ],
    },
    {
      "questionText": "What is your gender?",
      "answers": [
        {"text": "Male", "score": 20},
        {"text": "Female", "score": 20},
        {"text": "Other", "score": 20}
      ],
    }
  ];

  var questionIndex = 0;
  var _totalScore = 0;
// _ (underscore) before a variable name or a class name denotes that it is private

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      questionIndex += 1;
    });
    if (questionIndex < _questions.length) {
      print("More questions are left");
    } else {
      print("No more questions left");
    }
  }

  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
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
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
