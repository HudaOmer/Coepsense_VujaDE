import 'colors.dart';
import 'package:flutter/material.dart';

class TextButtonCustomized extends StatelessWidget {
  final String text;
  const TextButtonCustomized({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      alignment: Alignment.bottomRight,
      child: TextButton(
          onPressed: () {},
          child: Text(text, style: TextStyle(color: mainColor))),
    );
  }
}
