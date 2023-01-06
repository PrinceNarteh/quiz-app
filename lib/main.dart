import "package:flutter/material.dart";
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  List<String> questions = [
    "What's your favorite color?",
    "What's your favorite food?",
    "What's your favorite animal?",
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Question(questions[_questionIndex]),
              Answer("Answer One", _answerQuestion),
              const SizedBox(height: 8),
              Answer("Answer Two", _answerQuestion),
              const SizedBox(height: 8),
              Answer("Answer Three", _answerQuestion)
            ],
          ),
        ),
      ),
    );
  }
}
