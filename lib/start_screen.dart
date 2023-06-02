import 'package:flutter/material.dart';
import 'package:quiz_v2/question_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Aprende Flutter de Forma Divertida',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const QuestionScreen()),
              );
            },
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quizz'))
      ]),
    );
  }
}
