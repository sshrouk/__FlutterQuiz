import 'package:flutter/material.dart';
import 'package:quiz/answers.dart';
import 'package:quiz/questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
    this.question,
    this.questionIndex,
    this.answerQuestion,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(question[questionIndex]['questionText']),
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          return Answers(() => answerQuestion(answer['Score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
