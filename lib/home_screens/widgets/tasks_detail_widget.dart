import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class TasksDetailWidget extends StatelessWidget {
  const TasksDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: contrastColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.15),
                  const Icon(Icons.message_rounded),
                  const SizedBox(height: 10),
                  const Text('Tasks',
                      style: TextStyle(fontSize: 25, color: Colors.white)),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                  height: 0.5,
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.7),
              const SizedBox(height: 30),
              Container(
                  height: 0.5,
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.7),
              const SizedBox(height: 30),
              Container(
                  height: 0.5,
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.7),
              const SizedBox(height: 50),
            ],
          )),
    );
  }
}
