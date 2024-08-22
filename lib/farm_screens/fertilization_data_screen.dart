import 'package:flutter/material.dart';
import '../global_widgets/colored_button.dart';
import '../global_widgets/decorated_text_field.dart';
import '../utils/colors.dart';

class FertilizationDataScreen extends StatefulWidget {
  const FertilizationDataScreen({super.key});

  @override
  State<FertilizationDataScreen> createState() =>
      _FertilizationDataScreenState();
}

class _FertilizationDataScreenState extends State<FertilizationDataScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
          child: Text('Fertilization Data',
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Fertilizer Type'),
                  DecoratedTextField(
                      label: '',
                      hint: '',
                      isObsecure: false,
                      borderColor: mainColor,
                      controller: emailController,
                      validator: (value) =>
                          value!.isEmpty ? 'Please Enter a value' : null),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Quantity'),
                      DecoratedTextField(
                          label: '',
                          size: 0.4,
                          hint: '',
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
                      const Text('Space'),
                      DecoratedTextField(
                          label: '',
                          size: 0.4,
                          hint: '',
                          isObsecure: true,
                          borderColor: mainColor,
                          controller: passwordController,
                          validator: (value) =>
                              value!.isEmpty ? 'Please Enter a value' : null),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(height: MediaQuery.of(context).size.height * 0.12),
              ColoredButton(
                  color: mainColor,
                  text: 'Done',
                  onPressed: () {
                    _formKey.currentState!.validate();
                  }),
              const SizedBox(height: 10),
              ColoredButton(
                  color: contrastColor,
                  text: 'Fertilization History',
                  onPressed: () {}),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
