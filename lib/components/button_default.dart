import 'package:flutter/material.dart';

class ButtonDefault extends StatefulWidget {
  final String text;
  final void Function()? onPressed;
  final bool changeColor;
  const ButtonDefault(
      {super.key,
      required this.text,
      this.onPressed,
      required this.changeColor});

  @override
  State<ButtonDefault> createState() => _ButtonDefaultState();
}

class _ButtonDefaultState extends State<ButtonDefault> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          maximumSize: WidgetStateProperty.all(const Size(double.infinity, 50)),
          elevation: WidgetStateProperty.all(10),
          backgroundColor: WidgetStateProperty.all(Colors.lightBlue[100]),
        ),
        child: Text(widget.text,
            style: const TextStyle(
              color: Colors.black, /* fontSize: */
            )),
      ),
    );
  }
}
