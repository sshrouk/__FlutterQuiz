import 'package:flutter/material.dart';

import 'appmain.dart';

class Answers extends StatelessWidget {
  String answerText;
  Function x;

  Answers(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: w,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 25),
        ),
        onPressed: x,
      ),
    );
  }
}
