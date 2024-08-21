import 'package:flutter/material.dart';
import '../../components/notification_item.dart';

String title = 'Notifications      ';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

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
            const NotificationItem(isNew: true),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.width * 0.1),
              child: const Text('Old:'),
            ),
            const NotificationItem(isNew: false),
            const NotificationItem(isNew: false),
            const NotificationItem(isNew: false),
            const NotificationItem(isNew: false),
          ],
        )));
  }
}
