import 'package:corpsense_vujade/provider/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../components/colored_button.dart';
import '../utils/colors.dart';
import '../components/text_button_customized.dart';
import '../components/text_field_customized.dart';
import 'home_page.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // Log in
  Future<void> _login(String email, String password) async {
    // final email = emailController.text;
    // final password = passwordController.text;

    final authService = ref.read(authProvider);
    final token = await authService.login(email, password);

    if (token != null) {
      // Navigate to the HomeScreen
      print("success");
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      // Show error message
      print('fail');
      // showDialog(
      //     context: context,
      //     builder: (context) => AlertDialog(
      //             title: const Text('Login Failed'),
      //             content: const Text('Invalid email or password'),
      //             actions: [
      //               TextButton(
      //                   onPressed: () => Navigator.of(context).pop(),
      //                   child: const Text('OK'))
      //             ]));
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              const Center(
                  child: Text('Sign In', style: TextStyle(fontSize: 30))),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              TextFieldFormCustomized(
                  label: 'Email Address',
                  hint: 'SomeOne@email.com',
                  isObsecure: false,
                  controller: emailController,
                  validator: (value) =>
                      value!.isEmpty ? 'Please Enter a valid email' : null),
              TextFieldFormCustomized(
                  label: 'Password',
                  hint: '********',
                  isObsecure: true,
                  controller: passwordController,
                  validator: (value) =>
                      value!.isEmpty ? 'Please Enter a password' : null),
              const SizedBox(height: 10),
              TextButtonCustomized(text: 'Forgot Password?', onPressed: () {}),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              ColoredButton(
                  color: mainColor,
                  text: 'Sign In',
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      print('object');
                      await _login(
                          emailController.text, passwordController.text);
                      print('object2');
                    }
                  }),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
