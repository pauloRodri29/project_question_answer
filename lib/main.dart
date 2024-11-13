import 'package:flutter/material.dart';
import 'package:project_question_answer/widgets/screen_respond.dart';

main() => runApp(const AnswerApp());

class AnswerApp extends StatefulWidget {
  const AnswerApp({super.key});

  @override
  AnswerAppState createState() => AnswerAppState();
}

class AnswerAppState extends State<AnswerApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RespondScreen(
        questions: [
          {
            'question':
                'Qual das linguagens a seguir é amplamente utilizada para desenvolvimento de inteligência artificial?',
            'options': ['Python', 'Java', 'C++', 'JavaScript'],
            'answer': 'Python'
          },
          {
            'question':
                'Qual das opções é uma linguagem de marcação e não uma linguagem de programação?',
            'options': ['JavaScript', 'CSS', 'HTML', 'Python'],
            'answer': 'HTML'
          },
          {
            'question':
                'Qual das opções a seguir NÃO é uma linguagem de programação?',
            'options': ['JavaScript', 'C#', 'HTML', 'Python'],
            'answer': 'CSS'
          },
          {
            'question':
                'Qual das opções é uma linguagem de marcação e não uma linguagem de programação?',
            'options': ['JavaScript', 'CSS', 'HTML', 'Python'],
            'answer': 'HTML'
          },
        ],
      ),
    );
  }
}
