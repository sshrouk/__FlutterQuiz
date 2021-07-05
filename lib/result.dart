import 'package:flutter/material.dart';

import 'appmain.dart';

class Result extends StatelessWidget {
  final Function q;
  final int resultScore;

  Result(this.q, this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 70) {
      resultText = "You are awesome !";
    } else if (resultScore >= 40) {
      resultText = "Pretty likable !";
    } else {
      resultText = "You are bad !";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(4.0),
      child: Column(
        children: [
          Text(
            "Your score is $resultScore",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: b,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: b,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: q,
            child: Text(
              "Restart The App",
              style: TextStyle(
                fontSize: 30,
                //fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
