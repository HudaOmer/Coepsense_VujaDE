import 'package:flutter/material.dart';
import '../../components/notification_settings_item.dart';

String title = 'Notification Settings      ';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Center(
                child:
                    Text(title, style: const TextStyle(color: Colors.black))),
            elevation: 0,
            backgroundColor: Colors.white,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios, color: Colors.black))),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NotificationSettingItem(
                isNew: false, keyName: 'Notification Indicator'),
            const NotificationSettingItem(
              isNew: false,
              keyName: 'Show summary when locked',
            ),
            const NotificationSettingItem(
                isNew: false, keyName: 'Show summary when  locked'),
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1,
                    top: MediaQuery.of(context).size.width * 0.1),
                child: const Text('Preferences')),
            const NotificationPreferencesItem(
                isTrue: false,
                keyName: 'Push Notification',
                icon: Icons.pause_presentation_rounded),
            const NotificationPreferencesItem(
                isTrue: false, keyName: 'Email', icon: Icons.email_outlined),
            const NotificationPreferencesItem(
                isTrue: false, keyName: 'SMS', icon: Icons.sms_outlined),
          ],
        )));
  }
}
