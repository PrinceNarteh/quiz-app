import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;

  const Answer(this.answerText, this.selectHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectHandler,
      child: Ink(
        height: 50,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Center(
          child: Text(
            answerText,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
