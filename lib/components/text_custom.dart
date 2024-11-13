import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String text;
  const TextCustom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
