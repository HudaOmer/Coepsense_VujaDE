import '../utils/colors.dart';
import '../components/icon_customized.dart';
import '../utils/icons.dart';
import 'package:flutter/material.dart';
import 'farm/test.dart';
import 'home_pages_navigation/home.dart';
import 'home_pages_navigation/notifications.dart';
import 'home_pages_navigation/settings_page.dart';

double iconSize = 35;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> pages = [
    const Home(),
    const TestPage(),
    const Notifications(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: contrastColor),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: contrastColor,
              showSelectedLabels: false,
              showUnselectedLabels: false,
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
                    tooltip: 'Home',
                    icon: IconCustomized(
                        height: iconSize,
                        iconName: home.mode[currentIndex == 0 ? 0 : 1])),
                BottomNavigationBarItem(
                    label: 'Calender',
                    tooltip: 'Calender',
                    icon: IconCustomized(
                        height: iconSize,
                        iconName: calender.mode[currentIndex == 1 ? 0 : 1])),
                BottomNavigationBarItem(
                    label: 'Notifications',
                    tooltip: 'Notifications',
                    icon: IconCustomized(
                        height: iconSize,
                        iconName:
                            notifications.mode[currentIndex == 2 ? 0 : 1])),
                BottomNavigationBarItem(
                    label: 'Profile',
                    tooltip: 'Profile',
                    icon: IconCustomized(
                        height: iconSize,
                        iconName: profile.mode[currentIndex == 3 ? 0 : 1])),
              ]),
        ),
      ),
    );
  }
}
