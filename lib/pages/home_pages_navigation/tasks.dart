import 'package:flutter/material.dart';
import '../../components/task_item.dart';
import '../../components/time_range_item.dart';

String title = 'List Of Farms      ';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Center(
              child: Text(title, style: const TextStyle(color: Colors.black))),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.arrow_back_ios, color: Colors.black)),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
            // SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            TimeRangeItem(isIncome: true),
            TaskItem(isCompleted: true),
            TaskItem(isCompleted: false),
            TaskItem(isCompleted: false),
            AddTask(),
            TaskProgress(),
            AddSuggestion(),
          ])),
    );
  }
}
