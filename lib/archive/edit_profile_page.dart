import '../utils/colors.dart';
import 'package:flutter/material.dart';

import 'components/colored_button.dart';
import 'components/text_field_customized.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: contrastColor),
        title: Center(
            child: Text('Edit Profile       ',
                style: TextStyle(color: contrastColor, fontSize: 15))),
        leading: const Icon(Icons.arrow_back_ios),
        // actions: const [Icon(Icons.arrow_back_ios, color: Colors.white)],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 30),
            Center(
                child: Icon(Icons.account_circle,
                    size: 150, color: contrastColor)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const TextFieldFormCustomized(
                label: 'Name', hint: 'First Last', isObsecure: false),
            // const SizedBox(height: 30),
            const TextFieldFormCustomized(
                label: 'Email Address',
                hint: 'SomeOne@email.com',
                isObsecure: false),
            // const SizedBox(height: 30),
            const TextFieldFormCustomized(
                label: 'Password', hint: '********', isObsecure: true),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const SaveButton(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
