import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;

  const Answer(this.answerText, this.selectHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: selectHandler,
        child: Ink(
          height: 60,
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
                fontSize: 19,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
