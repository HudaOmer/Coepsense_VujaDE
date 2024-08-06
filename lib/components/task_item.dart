import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../utils/colors.dart';

class TaskItem extends StatelessWidget {
  final bool isCompleted;
  const TaskItem({super.key, required this.isCompleted});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            padding: const EdgeInsets.all(5.0),
            height: 80,
            decoration: BoxDecoration(
                color: isCompleted ? contrastColor : mediumGreyColor,
                borderRadius: BorderRadius.circular(15.0)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(isCompleted ? Icons.check_circle : Icons.circle_outlined,
                      size: 25, color: isCompleted ? mainColor : Colors.grey),
                  const SizedBox(width: 200.0),
                  isCompleted
                      ? Icon(Icons.check, size: 25, color: mainColor)
                      : Row(
                          children: const [
                            Icon(Icons.pause, size: 25, color: Colors.grey),
                            Icon(Icons.close, size: 25, color: Colors.grey),
                          ],
                        )
                ])));
  }
}

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            padding: const EdgeInsets.all(5.0),
            height: 80,
            decoration: BoxDecoration(
                color: mediumGreyColor,
                borderRadius: BorderRadius.circular(15.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.add_circle, size: 25, color: Colors.grey),
                SizedBox(width: 5),
                Text('Add Task', style: TextStyle(color: Colors.grey)),
              ],
            )));
  }
}

class AddSuggestion extends StatelessWidget {
  const AddSuggestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            padding: const EdgeInsets.all(5.0),
            height: 60,
            decoration: BoxDecoration(
                color: mainColor, borderRadius: BorderRadius.circular(15.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 17.0),
                Icon(Icons.assignment_add, size: 25, color: Colors.white),
                SizedBox(width: 5),
                Text('Add your Sugestions',
                    style: TextStyle(color: Colors.white)),
              ],
            )));
  }
}

class TaskProgress extends StatelessWidget {
  const TaskProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      const SizedBox(width: 100, child: Text('Completion Rate:', maxLines: 2)),
      CircularPercentIndicator(
        radius: 80.0,
        lineWidth: 8.0,
        percent: 0.75, // 75% complete
        center: const Text(
          "75%",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
        ),
        progressColor: mainColor,
        backgroundColor: Colors.transparent,
      ),
    ]);
  }
}
