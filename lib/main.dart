import "package:flutter/material.dart";
import 'package:quiz_app/custom-bottom.dart';
import 'package:quiz_app/question.dart';

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
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "${_questionIndex + 1} / ${questions.length}",
                      style: const TextStyle(fontSize: 20),
                    ),
                    Question(
                        questions[_questionIndex]['questionText'] as String),
                    ...(questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return CustomBottom(answer, _answerQuestion);
                    }).toList()
                  ],
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("You made it"),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _questionIndex = 0;
                          });
                        },
                        child: const Text("Try again"),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
