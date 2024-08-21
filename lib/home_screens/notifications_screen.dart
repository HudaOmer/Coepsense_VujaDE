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
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.width * 0.1),
              child: const Text('New:'),
            ),
            const NotificationItem(isInfo: true),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.width * 0.1),
              child: const Text('Old:'),
            ),
            const NotificationItem(isInfo: false),
            const NotificationItem(isInfo: false),
            const NotificationItem(isInfo: false),
            const NotificationItem(isInfo: false),
          ],
        )));
  }
}
