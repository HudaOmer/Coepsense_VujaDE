import 'package:flutter/material.dart';
import '../../utils/data.dart';
import 'widgets/settings_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Center(
              child: Text('Settings      ',
                  style: TextStyle(color: Colors.black))),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.arrow_back_ios, color: Colors.black)),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SettingsWidget(
                head: 'Account',
                settingsArray: [
                  SettingsIconText(
                      icon: Icons.person_2_outlined,
                      space: 20,
                      text: 'Profile',
                      iconColor: Colors.black,
                      textStyles: mediumBlackTextStyle,
                      onTap: () {}),
                  SettingsIconText(
                      icon: Icons.security,
                      space: 20,
                      text: 'Security',
                      iconColor: Colors.black,
                      textStyles: mediumBlackTextStyle,
                      onTap: () {}),
                  SettingsIconText(
                      icon: Icons.notifications_none,
                      space: 20,
                      text: 'Notification',
                      iconColor: Colors.black,
                      textStyles: mediumBlackTextStyle,
                      onTap: () {}),
                  SettingsIconText(
                      icon: Icons.lock_outline,
                      space: 20,
                      text: 'Reset Password',
                      iconColor: Colors.black,
                      textStyles: mediumBlackTextStyle,
                      onTap: () {}),
                ],
              ),
              SettingsWidget(
                head: 'Support & About',
                settingsArray: [
                  SettingsIconText(
                      icon: Icons.help_outline_rounded,
                      space: 20,
                      text: 'Help & Support',
                      iconColor: Colors.black,
                      textStyles: mediumBlackTextStyle,
                      onTap: () {}),
                  SettingsIconText(
                      icon: Icons.language,
                      space: 20,
                      text: 'App Language',
                      iconColor: Colors.black,
                      textStyles: mediumBlackTextStyle,
                      onTap: () {})
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
