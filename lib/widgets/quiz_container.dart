import 'package:flutter/material.dart';

const myColor = Color.fromRGBO(67, 245, 251, 0.849);

class QuizContainer extends StatelessWidget {
  const QuizContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8, top: 2),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.blue),
        borderRadius: BorderRadius.circular(15),
        color: myColor,
      ),
      width: 200,
      height: 70,
      alignment: Alignment.center,
      child: const Text(
        'TEST',
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 96, 96, 96)),
      ),
    );
  }
}
