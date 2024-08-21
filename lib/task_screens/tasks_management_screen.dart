import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/task_item.dart';

class TaskManagementScreen extends StatelessWidget {
  const TaskManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: contrastColor,
        appBar: CustomAppBar(
            color: contrastColor,
            title: 'Tasks Management',
            body: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  WeekdayDateWidget(day: 'sun', date: '3'),
                  WeekdayDateWidget(day: 'mon', date: '4'),
                  WeekdayDateWidget(day: 'tue', date: '5'),
                  WeekdayDateWidget(day: 'wed', date: '6'),
                  WeekdayDateWidget(day: 'thu', date: '7'),
                  WeekdayDateWidget(day: 'fri', date: '8'),
                  WeekdayDateWidget(day: 'sat', date: '9'),
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
                  const Text('Tasks', style: TextStyle(fontSize: 23)),
                  const SizedBox(height: 20),
                  const TaskItem(),
                  const SizedBox(height: 10),
                  const TaskItem(),
                  Center(
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3)),
                  const SizedBox(height: 10),
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
  const WeekdayDateWidget({super.key, required this.day, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(day, style: const TextStyle(color: Colors.white, fontSize: 18)),
        Text(date,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 18)),
      ],
    );
  }
}
