import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = 'Quiz is over!!!';
    String out = '\n Your Score is :' + resultScore.toString();
    resultText += out;
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          child: Text('Restart Quiz'),
          textColor: Colors.blue,
          onPressed: resetHandler,
        ),
      ]),
    );
  }
}
