import 'package:flutter/material.dart';
import 'widgets/weather_widget.dart';
import '../utils/colors.dart';

class FarmDataScreen extends StatelessWidget {
  const FarmDataScreen({super.key});

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
            child: Text('Farm Data',
                style: TextStyle(fontSize: 26, color: Colors.black))),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            const SizedBox(height: 30),
            const WeatherWidget(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
