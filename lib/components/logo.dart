import 'icons.dart';
import 'colors.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 100, child: Image.asset(logoGreen)),
        const SizedBox(height: 20),
        Center(
            child: Text("CorpeSense", style: TextStyle(color: contrastColor)))
      ],
    );
  }
}
