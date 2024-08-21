import 'package:flutter/material.dart';
import '../../utils/colors.dart';

const Color textColor = Colors.white;

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
            padding: const EdgeInsets.all(20.0),
            color: contrastColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: const [
                        Text('19',
                            style: TextStyle(fontSize: 50, color: textColor)),
                        Icon(Icons.sunny, size: 50, color: textColor),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Container(
                        height: 0.5,
                        color: textColor,
                        width: MediaQuery.of(context).size.width * 0.15),
                    const SizedBox(height: 30),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          WeatherState(
                              icon: Icons.water_drop_outlined, text: "98%"),
                          SizedBox(width: 20),
                          WeatherState(icon: Icons.cloud, text: "0mm")
                        ])
                  ],
                ),
                Container(
                    width: 0.5,
                    color: textColor,
                    height: MediaQuery.of(context).size.width * 0.15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Tasks',
                        style: TextStyle(fontSize: 25, color: textColor)),
                    const SizedBox(height: 30),
                    Container(
                        height: 0.5,
                        color: textColor,
                        width: MediaQuery.of(context).size.width * 0.15),
                    const SizedBox(height: 30),
                    Container(
                        height: 0.5,
                        color: textColor,
                        width: MediaQuery.of(context).size.width * 0.15),
                    const SizedBox(height: 30),
                    Container(
                        height: 0.5,
                        color: textColor,
                        width: MediaQuery.of(context).size.width * 0.15),
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class WeatherState extends StatelessWidget {
  final IconData icon;
  final String text;
  const WeatherState({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 25, color: textColor),
        const SizedBox(height: 15),
        Text(text, style: const TextStyle(color: textColor))
      ],
    );
  }
}
