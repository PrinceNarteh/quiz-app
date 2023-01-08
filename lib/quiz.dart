import 'package:flutter/material.dart';
import 'package:quiz_app/custom-bottom.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  final int questionIndex;

  const Quiz({
    required this.questionIndex,
    required this.questions,
    required this.answerQuestion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "${questionIndex + 1} / ${questions.length}",
          style: const TextStyle(fontSize: 20),
        ),
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return CustomBottom(answer, answerQuestion);
        }).toList()
      ],
    );
  }
}
