import 'package:corpsense_vujade/components/home_page_components/search_bar.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: SearchBar()),
    );
  }
}
