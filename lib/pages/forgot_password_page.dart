import '../components/colored_button.dart';
import '../components/text_field_customized.dart';
import '../components/icon_customized.dart';
import '../utils/icons.dart';
import '../utils/colors.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: contrastColor),
        backgroundColor: Colors.white,
        title: const Text('Edit Profile'),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            IconCustomized(height: 100, iconName: lock),
            const SizedBox(height: 20),
            Center(
                child: Text('Forgot Password',
                    style: TextStyle(fontSize: 20, color: contrastColor))),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            const TextFieldFormCustomized(
                label: 'Password', hint: '********', isObsecure: true),
            const SizedBox(height: 30),
            const TextFieldFormCustomized(
                label: 'Re-Write Password', hint: '********', isObsecure: true),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            const SaveButton(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
