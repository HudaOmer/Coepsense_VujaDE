import 'package:corpsense_vujade/pages/forget_password_page.dart';
import 'package:corpsense_vujade/pages/home_page.dart';
import 'package:corpsense_vujade/pages/sign_in_page.dart';
import 'package:corpsense_vujade/pages/splash_screen.dart';
import 'package:corpsense_vujade/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'pages/home_pages_navigation/edit_profile.dart';
import 'pages/register_page.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: "Saken",
      ),
      home: const HomePage(),
    );
  }
}
