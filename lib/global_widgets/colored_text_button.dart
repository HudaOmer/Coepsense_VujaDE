import 'package:flutter/material.dart';
import '../utils/colors.dart';

class ColoredTextButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const ColoredTextButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      alignment: Alignment.bottomRight,
      child: TextButton(
          onPressed: onPressed,
          child: Text(text,
              textAlign: TextAlign.left, style: TextStyle(color: mainColor))),
    );
  }
}
