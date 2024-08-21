import 'package:flutter/material.dart';
import '../utils/icons.dart';
import 'widgets/logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Image.asset(farmer, fit: BoxFit.fitHeight)),
            const Center(child: Logo(isColored: false))
          ],
        ));
  }
}
