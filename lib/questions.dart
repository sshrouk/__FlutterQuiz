import 'package:flutter/material.dart';
import 'appmain.dart';

class Questions extends StatelessWidget {

  String questionText;

  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child:
          Text(
            questionText,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: b,
            ),
            textAlign: TextAlign.center,
          ),

    );
  }
}
