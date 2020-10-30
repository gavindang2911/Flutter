import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreList = [];

  Map<String, bool> questions = {
    'You can lead a cow down stairs but not up stairs.': false,
    'Approximately one quarter of human bones are in the feet.': true,
    'A slug\'s blood is green.': true,
  };

  void checkAnswer(int number, bool answer) {
    var values = questions.values.toList();

    if (values[number] == answer) {
      setState(() {
        scoreList.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      });
    } else {
      setState(() {
        scoreList.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int ran = Random().nextInt(3);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              generate(ran),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'TRUE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(ran, true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              child: Text(
                'FALSE',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(ran, false);
              },
            ),
          ),
        ),
        Row(
          children: scoreList,
        ),
      ],
    );
  }

  String generate(int ran) {
    int count = 0;
    for (var key in questions.keys) {
      if (count == ran) {
        return key;
      }
      count++;
    }
  }
}
