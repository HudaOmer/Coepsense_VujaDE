import 'pages/forget_password_page.dart';
import 'pages/home_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/splash_screen.dart';
import 'pages/welcome_page.dart';
import 'pages/home_pages_navigation/edit_profile.dart';
import 'pages/register_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //     systemNavigationBarColor: mainColor,
  //     statusBarColor: mainColor,
  //     systemNavigationBarDividerColor: mainColor));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: "Ubuntu"),
      home: const HomePage(),
    );
  }
}
