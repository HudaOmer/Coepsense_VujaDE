import 'package:corpsense_vujade/components/colored_button.dart';
import 'package:corpsense_vujade/components/text_field_customized.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            const Center(
                child: Text('Register', style: TextStyle(fontSize: 30))),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            const TextFieldFormCustomized(
                label: 'Name', hint: 'First Last', isObsecure: false),
            const SizedBox(height: 30),
            const TextFieldFormCustomized(
                label: 'Email Address',
                hint: 'SomeOne@email.com',
                isObsecure: false),
            const SizedBox(height: 30),
            const TextFieldFormCustomized(
                label: 'Password', hint: '********', isObsecure: true),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            const RegisterButton(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
