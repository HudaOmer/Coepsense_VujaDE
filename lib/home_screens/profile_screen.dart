import 'package:flutter/material.dart';
import '../global_widgets/colored_button.dart';
import '../global_widgets/colored_text_button.dart';
import '../global_widgets/decorated_text_field.dart';
import '../global_widgets/round_image.dart';
import '../utils/colors.dart';
import '../utils/icons.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: contrastColor),
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back_ios),
        title: const Center(
          child: Text('Profile',
              style: TextStyle(fontSize: 30, color: Colors.black)),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              RoundImage(
                  image: farmer,
                  color: Colors.grey,
                  borderWidth: 0.1,
                  size: 200),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Name'),
                  DecoratedTextField(
                      label: '',
                      hint: 'user name',
                      size: 0.7,
                      isObsecure: false,
                      borderColor: mainColor,
                      controller: emailController,
                      validator: (value) =>
                          value!.isEmpty ? 'Please Enter a value' : null),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Email'),
                  DecoratedTextField(
                      label: '',
                      size: 0.7,
                      hint: 'user@example.com',
                      isObsecure: true,
                      borderColor: mainColor,
                      controller: passwordController,
                      validator: (value) =>
                          value!.isEmpty ? 'Please Enter a value' : null),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Phone number'),
                  DecoratedTextField(
                      label: '',
                      size: 0.7,
                      hint: '+249',
                      isObsecure: true,
                      borderColor: mainColor,
                      controller: phoneController,
                      validator: (value) =>
                          value!.isEmpty ? 'Please Enter a value' : null),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(height: MediaQuery.of(context).size.height * 0.12),
              ColoredButton(
                  color: mainColor,
                  text: 'Done',
                  size: 0.2,
                  onPressed: () {
                    _formKey.currentState!.validate();
                  }),
              const SizedBox(height: 10),
              ColoredTextButton(
                  color: contrastColor, text: 'Log Out', onPressed: () {}),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
