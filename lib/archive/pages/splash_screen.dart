import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/auth.dart';
import '../utils/icons.dart';
import '../components/logo_white.dart';
import 'package:flutter/material.dart';
import 'home_navigation_page.dart';
import 'welcome_page.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  void _checkLoginStatus() async {
    final authService = ref.read(authProvider);
    final isLoggedIn = await authService.isAuthenticated;

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              isLoggedIn ? HomeNavigatorPage() : const WelcomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Image.asset(farmer, fit: BoxFit.fitHeight)),
            const Center(child: LogoWhite())
          ],
        ));
  }
}
