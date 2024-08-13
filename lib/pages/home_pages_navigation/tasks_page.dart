import 'package:flutter/material.dart';
import '../../components/task_item.dart';
import '../../components/time_range_item.dart';
import '../../models/task.dart';

String title = 'Tasks      ';

class TasksPage extends StatelessWidget {
  final List<Task> tasks;
  const TasksPage({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Center(
              child: Text(title, style: const TextStyle(color: Colors.black))),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios, color: Colors.black))),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            // SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            const TimeRangeItem(isIncome: true),
            ...tasks.map((task) => TaskItem(task: task)).toList(),
            const AddTask(),
            const TaskProgress(),
            const AddSuggestion(),
          ])),
    );
  }
}
