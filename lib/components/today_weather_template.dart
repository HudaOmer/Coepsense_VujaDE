import 'package:flutter/material.dart';
import '../../utils/colors.dart';

const Color textColor = Colors.white;

class TodayWeatherTemplate extends StatelessWidget {
  const TodayWeatherTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          color: contrastColor,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Today',
                      style: TextStyle(fontSize: 20, color: textColor)),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.15),
                  const Text('Aug, 6',
                      style: TextStyle(fontSize: 20, color: textColor))
                ],
              ),
              const SizedBox(height: 15.0),
              Container(height: 1, color: mainColor),
              const SizedBox(height: 35.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  WeatherState(
                      icon: Icons.cloud, maxTemp: '19 C', minTemp: '15.00'),
                  WeatherState(
                      icon: Icons.cloud, maxTemp: '18 C', minTemp: '16.00'),
                  WeatherState(
                      icon: Icons.cloud, maxTemp: '18 C', minTemp: '17.00'),
                  WeatherState(
                      icon: Icons.cloud, maxTemp: '18 C', minTemp: '18.00'),
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherState extends StatelessWidget {
  final IconData icon;
  final String maxTemp;
  final String minTemp;
  const WeatherState(
      {super.key,
      required this.icon,
      required this.maxTemp,
      required this.minTemp});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(maxTemp, style: const TextStyle(color: textColor)),
        const SizedBox(height: 15),
        Icon(icon, size: 25, color: textColor),
        const SizedBox(height: 15),
        Text(minTemp, style: const TextStyle(color: textColor))
      ],
    );
  }
}
