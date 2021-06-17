import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() answerQuestion;
  final String text;

  Answer({required this.answerQuestion, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        // width: 100,
        margin: const EdgeInsets.only(bottom: 6),
        padding: const EdgeInsets.all(2),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            // style: ButtonStyle( backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: answerQuestion,
            child: Text(this.text)),
      )
    ]);
  }
}
