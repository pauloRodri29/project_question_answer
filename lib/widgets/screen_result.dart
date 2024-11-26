import 'package:flutter/material.dart';
import 'package:project_question_answer/components/button_default.dart';
import 'package:project_question_answer/components/score_screen.dart';
import 'package:project_question_answer/components/text_custom.dart';

class RespondScreen extends StatefulWidget {
  final List<Map<String, Object>> questions;
  const RespondScreen({super.key, required this.questions});

  @override
  State<RespondScreen> createState() => _RespondScreenState();
}

class _RespondScreenState extends State<RespondScreen> {
  int _index = 0;
  int _points = 0;
  bool _isFinal = true;
  bool _answer = false;
  bool _correct = false;

//Funçao para mudar as questões apresentadas
  changeQuestion() {
    setState(() {
      if (_index != widget.questions.length - 1) {
        _index++;
      } else {
        _isFinal = false;
      }
    });
  }

//Função para Zerar tudo fazendo com que o o usuário volte para o inicio
  start() {
    setState(() {
      _index = 0;
      _isFinal = true;
      _points = 0;
    });
  }

//Adicionando pontos
  addPoints() {
    setState(() {
      _points++;
    });
  }

//Vai mudar a cor do botão da resposta correta
  changeColorButtonCorret() {
    setState(() {});
  }

//Verficando se a respostas está certa
  respond(String awnser) {
    setState(() {
      if (awnser == widget.questions[_index]['answer']) {
        _correct = true;
        changeColorButtonCorret();
        addPoints();
      } else {
        _answer = true;
      }
      changeQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = widget.questions;
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text("Perguntas e Respostas",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue[900],
        centerTitle: true,
      ),
      body: _isFinal
          ? Column(
              children: [
                TextCustom(text: questions[_index]['question'].toString()),
                const SizedBox(height: 20),
                for (var option
                    in widget.questions[_index]['options'] as List<String>)
                  ButtonDefault(
                    onPressed: () {
                      respond(option);
                    },
                    text: option.toString(),
                    changeColor: false,
                  ),
              ],
            )
          : ScoreScreen(
              text: 'Pontuação: ${_points.toString()}', onPressed: start),
    );
  }
}
