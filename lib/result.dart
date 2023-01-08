import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restart;

  const Result({
    required this.restart,
    required this.resultScore,
    super.key,
  });

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = "You are ... strange";
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 25),
          ),
          ElevatedButton(
            onPressed: restart,
            child: const Text(
              "Try again",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
