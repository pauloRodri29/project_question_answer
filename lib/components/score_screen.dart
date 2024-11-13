// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'package:project_question_answer/components/text_animation_style.dart';

class ScoreScreen extends StatefulWidget {
  final String text;
  final void Function() onPressed;
  const ScoreScreen({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  bool _showAnimation = true;

  @override
  initState() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _showAnimation = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _showAnimation
        ? Center(
            child: LoadingAnimationWidget.beat(color: Colors.black, size: 50),
          )
        : Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextAnimationStyleScore(text: widget.text),
                const SizedBox(height: 20),
                IconButton(
                  onPressed: widget.onPressed,
                  icon: const Icon(Icons.loop_sharp, size: 50),
                ),
              ],
            ),
          ),
        );
  }
}
