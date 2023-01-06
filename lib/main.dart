import "package:flutter/material.dart";

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text("Answer One"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text("Answer Two"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text("Answer Three"),
            ),
          ],
        ),
      ),
    );
  }
}
