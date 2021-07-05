import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

class AppMain extends StatefulWidget {
  @override
  _AppMainState createState() => _AppMainState();
}

bool isSwitched = false;
Color w = Colors.white;
Color b = Colors.black;

class _AppMainState extends State<AppMain> {
  int _questionIndex = 0;
  int _totalScore = 0;
  int num1 = 0;
  int num2 = 0;
  int num3 = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      num1 = 0;
      num2 = 0;
      num3 = 0;
    });
  }

  void answerQuestion(score) {
    if (_questionIndex == 0) {
      num1 = score;
    } else if (_questionIndex == 1) {
      num2 = score;
    } else if (_questionIndex == 2) {
      num3 = score;
    }
    _totalScore += score;
    setState(() {
      _questionIndex+=1;
    });
    print("questionIndex =$_questionIndex");
    print("num1 =$num1");
    print("num2 =$num2");
    print("num3 =$num3");
    print("totalScore =$_totalScore");
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': "what\'s your favorite color?",
      'answers': [
        {'text': 'Black', 'Score': 10},
        {'text': 'Red', 'Score': 20},
        {'text': 'Blue', 'Score': 30},
        {'text': 'White', 'Score': 40}
      ]
    },
    {
      'questionText': "what\'s your favorite animal?",
      'answers': [
        {'text': 'Rabbit', 'Score': 10},
        {'text': 'Dog', 'Score': 20},
        {'text': 'Cat', 'Score': 30},
        {'text': 'Monkey', 'Score': 40}
      ]
    },
    {
      'questionText': "what\'s your favorite eat?",
      'answers': [
        {'text': 'Pasta', 'Score': 30},
        {'text': 'Mlo5ya', 'Score': 40},
        {'text': 'M7shy', 'Score': 40},
        {'text': 'chicken', 'Score': 10}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz",
          style: TextStyle(
            color: w,
          ),
        ),
        actions: <Widget>[
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                if (isSwitched == true) {
                  b = Colors.white;
                  w = Colors.black;
                }
                if (isSwitched == false) {
                  b = Colors.black;
                  w = Colors.white;
                }
              });
            },
            activeColor: Colors.white,
            inactiveThumbColor: Colors.black,
            inactiveTrackColor: Colors.black,
          ),
        ],
      ),
      body: Container(
          color: w,
          height: double.infinity,
          child: _questionIndex < _question.length
              ? Quiz(
                  _question,
                  _questionIndex,
                  answerQuestion,
                )
              : Result(_resetQuiz, _totalScore)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          setState(() {
            if (_questionIndex == 0) {
              _totalScore -= num1;
            } else if (_questionIndex == 1) {
              _totalScore -= num2;
            } else if (_questionIndex == 2) {
              _totalScore -= num3;
            }

            if (_questionIndex > 0) {
              _questionIndex--;
            }
          });
          print("questionIndex =$_questionIndex");
          print("num1 =$num1");
          print("num2 =$num2");
          print("num3 =$num3");

          print("totalScore =$_totalScore");
        },
      ),
    );
  }
}
