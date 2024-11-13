import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TextAnimationStyleScore extends StatelessWidget {
  final String text;
  const TextAnimationStyleScore({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        WavyAnimatedText(
          text,
          textStyle: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        )
      ],
      repeatForever: true,
    );
  }
}
