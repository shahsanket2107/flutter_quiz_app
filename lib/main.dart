// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer chosen!");
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
              Text('Choose one option'),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () {
                  print("Answer 2 chosen!!");
                },
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print("Answer 3 chosen !!");
                },
              ),
              RaisedButton(
                child: Text('Answer 4'),
                onPressed: () {
                  print("Answer 4 chosen !!");
                },
              )
            ],
          )),
    );
  }
}
