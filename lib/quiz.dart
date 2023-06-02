import 'package:flutter/material.dart';
import 'package:quiz_v2/question_screen.dart';
import 'package:quiz_v2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Widget> pages = [const StartScreen(), const QuestionScreen()];
  int currentPage = 0;

  void switchScreen() {
    setState(() {
      currentPage = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [const StartScreen(), const QuestionScreen()];

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple.shade900, Colors.deepPurple.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: pages[currentPage],
            ),
          ),
        ),
      ),
    );
  }
}
