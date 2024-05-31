import 'package:corpsense_vujade/components/colored_button.dart';
import 'package:corpsense_vujade/components/logo.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Logo(),
          SizedBox(height: 120),
          SignInButton(),
          SizedBox(height: 15),
          RegisterButton(),
        ],
      ),
    );
  }
}
