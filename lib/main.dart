import "package:flutter/material.dart";
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  List<Map<String, Object>> questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": "What's your favorite food?",
      "answers": ["Gobe", "Fried Rice", "Banku", "Jollof"]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Cat", "Dog", "Rabbit", "Peacock"]
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _questionIndex < questions.length
              ? Quiz(
                  questions: questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(restart: _restart),
        ),
      ),
    );
  }
}
