import 'package:flutter/material.dart';
import '../colors.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          color: mediumGreyColor,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Weather', style: TextStyle(fontSize: 20)),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.15),
                  Row(
                    children: [
                      Icon(Icons.cloud, size: 60, color: contrastColor),
                      const SizedBox(width: 10),
                      const Text('19 C', style: TextStyle(fontSize: 25))
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  WeatherState(icon: Icons.thermostat, text: '19 C'),
                  WeatherState(icon: Icons.water_drop_outlined, text: '98%'),
                  WeatherState(icon: Icons.air, text: '6 m/s'),
                  WeatherState(icon: Icons.cloud, text: '0 mm'),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('5:25 AM'),
                  SizedBox(width: 30),
                  Icon(Icons.sunny_snowing),
                  SizedBox(width: 30),
                  Text('8:25 PM')
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
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
      children: [Icon(icon, size: 25), const SizedBox(height: 15), Text(text)],
    );
  }
}
