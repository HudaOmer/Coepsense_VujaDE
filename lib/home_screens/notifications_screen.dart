import 'package:flutter/material.dart';
import 'widgets/notification_widget.dart';

String title = 'Notifications      ';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
            leading: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            NotificationItem(isInfo: true),
            NotificationItem(isInfo: false),
            NotificationItem(isInfo: false),
            NotificationItem(isInfo: false),
            NotificationItem(isInfo: false),
          ],
        )));
  }
}
