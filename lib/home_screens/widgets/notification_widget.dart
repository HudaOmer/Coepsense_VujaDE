import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class NotificationItem extends StatelessWidget {
  final bool isInfo;
  const NotificationItem({super.key, required this.isInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Center(
        child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: isInfo ? mainColor : Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, -2)),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 17.0),
                    Text(isInfo ? 'Info' : 'Alert',
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black)),
                    const SizedBox(width: 17.0),
                    isInfo
                        ? const Icon(Icons.info, size: 25)
                        : const Icon(Icons.new_releases_outlined,
                            size: 25, color: Colors.amber),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      'You have new weather update for the day You have new weather update for the day',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                )
              ],
            )),
      ),
    );
  }
}