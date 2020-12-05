import 'package:flutter/material.dart';

import './question.dart';

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
      "What is your name?",
      "What is your favourite color?",
      "What is your favourite food?"
    ];
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('First App'),
          ),
          body: Column(
            children: [
              Question(questions[questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 4'),
                onPressed: answerQuestion,
              )
            ],
          )),
    );
  }
}
