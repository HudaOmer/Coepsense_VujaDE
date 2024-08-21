import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/icons.dart';
import '../global_widgets/round_image.dart';
import 'widgets/task_widget.dart';
import 'widgets/weather_widget.dart';

double appbarheight = 120;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: appbarheight,
        iconTheme: IconThemeData(color: contrastColor),
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu, size: 40),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.02),
            child: Row(
              children: [
                RoundImage(
                    image: notified,
                    size: 40,
                    borderWidth: 1,
                    color: mediumGreyColor),
                const SizedBox(width: 15),
                RoundImage(
                    image: farmer,
                    size: 50,
                    borderWidth: 0,
                    color: Colors.white),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const TaskWidget(number: '2'),
            const SizedBox(height: 30),
            const WeatherWidget(),
            const SizedBox(height: 80),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                    padding: const EdgeInsets.all(20.0),
                    color: contrastColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('Productivity Rate',
                            style: TextStyle(fontSize: 22, color: textColor))
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
