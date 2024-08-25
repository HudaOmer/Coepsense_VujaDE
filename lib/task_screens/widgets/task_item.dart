import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, -2)),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: mainColor),
                      child: const Icon(Icons.list_alt_rounded,
                          color: Colors.white),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Task', style: TextStyle(fontSize: 13)),
                        Text('2 Days ago',
                            style: TextStyle(color: Colors.grey, fontSize: 11)),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.08),
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: contrastColor),
                      child: const Center(
                          child: Text('Complete',
                              style: TextStyle(
                                  fontSize: 11, color: Colors.white))),
                    ),
                  ]),
            )));
  }
}
