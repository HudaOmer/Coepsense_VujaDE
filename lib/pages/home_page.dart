import '../components/colors.dart';
import '../components/icon_customized.dart';
import '../components/icons.dart';
import 'home_pages_navigation/main_home_page.dart';
import 'home_pages_navigation/edit_profile.dart';
import 'package:flutter/material.dart';

// SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> pages = const [
    MainHomePage(),
    EditProfilePage(),
    MainHomePage(),
    EditProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        // color: Colors.transparent,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: contrastColor),
        child: BottomNavigationBar(
            // backgroundColor: mainColor,
            showSelectedLabels: false,
            elevation: 0,
            currentIndex: currentIndex,
            onTap: (int newValue) {
              setState(() {
                currentIndex = newValue;
              });
            },
            items: [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: IconCustomized(height: 40, iconName: lock)),
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: IconCustomized(height: 40, iconName: lock)),
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: IconCustomized(height: 40, iconName: lock)),
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: IconCustomized(height: 40, iconName: lock)),
            ]),
      ),
    );
  }
}
