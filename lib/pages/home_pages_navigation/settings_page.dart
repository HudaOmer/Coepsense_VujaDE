import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../components/settings_element.dart';
import '../../utils/data.dart';
import 'notification_settings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
              SettingsElement(
                head: 'Account',
                settingsArray: [
                  SettingsIconText(
                      icon: Icons.person_2_outlined,
                      space: 20,
                      text: 'Edit Profile',
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const NotificationSettings()),
                        );
                      }),
                  SettingsIconText(
                      icon: Icons.lock_outline,
                      space: 20,
                      text: 'Privacy',
                      iconColor: Colors.black,
                      textStyles: mediumBlackTextStyle,
                      onTap: () {}),
                ],
              ),
              SettingsElement(
                head: 'Support & About',
                settingsArray: [
                  SettingsIconText(
                      icon: Icons.credit_card,
                      space: 20,
                      text: 'My Subscription',
                      iconColor: Colors.black,
                      textStyles: mediumBlackTextStyle,
                      onTap: () {}),
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
              SettingsElement(
                head: 'Actions',
                settingsArray: [
                  SettingsIconText(
                      icon: Icons.flag_outlined,
                      space: 20,
                      text: 'Report a Problem',
                      iconColor: Colors.black,
                      textStyles: mediumBlackTextStyle,
                      onTap: () {}),
                  SettingsIconText(
                      icon: Icons.group_add_outlined,
                      space: 20,
                      text: 'Add account',
                      iconColor: Colors.black,
                      textStyles: mediumBlackTextStyle,
                      onTap: () {}),
                  SettingsIconText(
                      icon: Icons.login_outlined,
                      space: 20,
                      text: 'Log Out',
                      iconColor: mainColor,
                      textStyles: boldMediumColoredTextStyle,
                      onTap: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
