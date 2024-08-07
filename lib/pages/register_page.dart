import 'package:corpsense_vujade/pages/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/colored_button.dart';
import '../components/text_field_customized.dart';
import 'package:flutter/material.dart';

import '../provider/auth.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController(); // Added phone controller
  final _typeController = TextEditingController(); // Added type controller
  final _passwordController = TextEditingController();
  final _passwordConfirmationController =
      TextEditingController(); // Added password confirmation controller
  bool _isLoading = false;
  String? _errorMessage;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose(); // Dispose of the phone controller
    _typeController.dispose(); // Dispose of the type controller
    _passwordController.dispose();
    _passwordConfirmationController
        .dispose(); // Dispose of the password confirmation controller
    super.dispose();
  }

  Future<void> _register() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    final authService = ref.read(authProvider);

    final token = await authService.register(
      _nameController.text,
      _emailController.text,
      _phoneController.text,
      _typeController.text,
      _passwordController.text,
      _passwordConfirmationController.text,
    );

    if (token != null) {
      // Handle successful registration, e.g., navigate to another page
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      setState(() {
        _errorMessage = 'Registration failed. Please try again.';
      });
    }

    setState(() {
      _isLoading = false;
    });
  }

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
            TextFieldFormCustomized(
                controller: _nameController,
                label: 'Name',
                hint: 'First Last',
                isObsecure: false),
            TextFieldFormCustomized(
                controller: _emailController,
                label: 'Email Address',
                hint: 'SomeOne@email.com',
                isObsecure: false),
            TextFieldFormCustomized(
                controller: _passwordController,
                label: 'Password',
                hint: '********',
                isObsecure: true),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            const RegisterButton(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
