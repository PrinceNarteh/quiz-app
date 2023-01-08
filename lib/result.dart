import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback restart;

  const Result({required this.restart, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "You made it",
            style: TextStyle(fontSize: 25),
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
