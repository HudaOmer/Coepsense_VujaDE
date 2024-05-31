import 'package:corpsense_vujade/components/icons.dart';
import 'package:flutter/material.dart';

class LogoWhite extends StatelessWidget {
  const LogoWhite({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 110, child: Image.asset(logoWhite)),
        const SizedBox(height: 30),
        const Center(
            child: Text("CorpeSense",
                style: TextStyle(color: Colors.white, fontSize: 20)))
      ],
    );
  }
}
