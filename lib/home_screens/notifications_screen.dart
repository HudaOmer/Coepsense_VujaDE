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
            elevation: 0,
            backgroundColor: Colors.white,
            leading: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
              ),
              child: Text(title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700)),
            ),
            const SizedBox(height: 10),
            const NotificationItem(isInfo: true),
            const NotificationItem(isInfo: false),
            const NotificationItem(isInfo: false),
            const NotificationItem(isInfo: false),
            const NotificationItem(isInfo: false),
          ],
        )));
  }
}
