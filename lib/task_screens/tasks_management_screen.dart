import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../global_widgets/custom_appbar.dart';
import 'widgets/task_item.dart';

class TaskManagementScreen extends StatelessWidget {
  const TaskManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: contrastColor,
        appBar: CustomAppBar(
            color: contrastColor,
            title: 'Tasks Management    ',
            body: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      WeekdayDateWidget(day: 'sun', date: '3', isToday: false),
                      WeekdayDateWidget(day: 'mon', date: '4', isToday: true),
                      WeekdayDateWidget(day: 'tue', date: '5', isToday: false),
                      WeekdayDateWidget(day: 'wed', date: '6', isToday: false),
                      WeekdayDateWidget(day: 'thu', date: '7', isToday: false),
                      WeekdayDateWidget(day: 'fri', date: '8', isToday: false),
                      WeekdayDateWidget(day: 'sat', date: '9', isToday: false),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                ],
              )
            ]),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, -2)),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                      const Text(
                        'Tasks',
                        style: TextStyle(fontSize: 23),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const TaskItem(),
                  const SizedBox(height: 10),
                  const TaskItem(),
                  Center(
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3)),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ));
  }
}

class WeekdayDateWidget extends StatelessWidget {
  final String day;
  final String date;
  final bool isToday;
  const WeekdayDateWidget(
      {super.key,
      required this.day,
      required this.date,
      required this.isToday});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: mainColor.withOpacity(isToday ? 0.2 : 0.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(day,
              style: TextStyle(
                  color: isToday ? mainColor : Colors.white, fontSize: 13)),
          Text(date,
              style: TextStyle(
                  color: isToday ? mainColor : Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 11)),
        ],
      ),
    );
  }
}
