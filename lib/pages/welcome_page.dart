import '../components/colored_button.dart';
import '../components/logo.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'register_page.dart';
import 'sign_in_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Logo(),
          const SizedBox(height: 120),
          ColoredButton(
              color: mainColor,
              text: 'Sign In',
              onPressed: () async {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInPage()));
              }),
          const SizedBox(height: 15),
          ColoredButton(
              color: contrastColor,
              text: 'Register',
              onPressed: () async {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterPage()));
              }),
        ],
      ),
    );
  }
}
