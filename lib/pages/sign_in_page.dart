import 'package:corpsense_vujade/components/colored_button.dart';
import 'package:corpsense_vujade/components/text_button_customized.dart';
import 'package:corpsense_vujade/components/text_field_customized.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            const Center(
                child: Text('Sign In', style: TextStyle(fontSize: 30))),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            const TextFieldFormCustomized(
                label: 'Email Address',
                hint: 'SomeOne@email.com',
                isObsecure: false),
            const SizedBox(height: 40),
            const TextFieldFormCustomized(
                label: 'Password', hint: '********', isObsecure: true),
            const SizedBox(height: 10),
            const TextButtonCustomized(text: 'Forgot Password?'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            const SignInButton(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
