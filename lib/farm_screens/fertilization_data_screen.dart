import 'package:flutter/material.dart';
import '../global_widgets/colored_button.dart';
import '../global_widgets/decorated_text_field.dart';
import '../utils/colors.dart';
import 'widgets/field_widget.dart';

class FertilizationDataScreen extends StatefulWidget {
  const FertilizationDataScreen({super.key});

  @override
  State<FertilizationDataScreen> createState() =>
      _FertilizationDataScreenState();
}

class _FertilizationDataScreenState extends State<FertilizationDataScreen> {
  TextEditingController FertilizerController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController spaceController = TextEditingController();
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
          child: Text('Fertilization Data      ',
              style: TextStyle(color: Colors.black)),
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
              FieldsWidget(
                  controller: FertilizerController, name: 'Fertilizer Type'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FieldsWidget(
                      controller: quantityController,
                      size: 0.35,
                      name: 'Quantity'),
                  FieldsWidget(
                      controller: spaceController, size: 0.35, name: 'Space'),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.25),
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
