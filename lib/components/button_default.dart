import 'package:flutter/material.dart';

class ButtonDefault extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const ButtonDefault({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          maximumSize: WidgetStateProperty.all(const Size(double.infinity, 50)),
          elevation: WidgetStateProperty.all(10),
          backgroundColor: WidgetStateProperty.all(Colors.lightBlue[100]),
        ),
        child: Text(text,
            style: const TextStyle(
              color: Colors.black, /* fontSize: */
            )),
      ),
    );
  }
}
