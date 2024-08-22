import 'package:flutter/material.dart';
import '../global_widgets/custom_appbar.dart';
import '../utils/colors.dart';
import 'widgets/weather_items.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: contrastColor,
        appBar: CustomAppBar(color: contrastColor, title: 'Weather', body: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.sunny, color: Colors.amber, size: 60),
              SizedBox(width: 20),
              Text('19C',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 28)),
            ],
          ),
          const SizedBox(height: 10),
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
                  WeatherItemOne(
                      parameter: 'Wind',
                      parameterIcon: Icons.air,
                      value: '30 km/h',
                      widget: Row(
                        children: [
                          Icon(Icons.compass_calibration, color: mainColor),
                          const Text('no')
                        ],
                      )),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        WeatherWidgetTwo(
                            parameter: 'Somewhere',
                            parameterIcon: Icons.cloud,
                            value: '28 C',
                            isSmall: false),
                        WeatherWidgetTwo(
                            parameter: 'Somewhere',
                            parameterIcon: Icons.cloud,
                            value: '28 C',
                            isSmall: false),
                        WeatherWidgetTwo(
                            parameter: 'Somewhere',
                            parameterIcon: Icons.cloud,
                            value: '28 C',
                            isSmall: false),
                        WeatherWidgetTwo(
                            parameter: 'Somewhere',
                            parameterIcon: Icons.cloud,
                            value: '28 C',
                            isSmall: false),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        WeatherWidgetTwo(
                            parameter: 'Somewhere',
                            parameterIcon: Icons.cloud,
                            value: '28 C',
                            isSmall: true),
                        WeatherWidgetTwo(
                            parameter: 'Somewhere',
                            parameterIcon: Icons.cloud,
                            value: '28 C',
                            isSmall: true),
                        WeatherWidgetTwo(
                            parameter: 'Somewhere',
                            parameterIcon: Icons.cloud,
                            value: '28 C',
                            isSmall: true),
                        WeatherWidgetTwo(
                            parameter: 'Somewhere',
                            parameterIcon: Icons.cloud,
                            value: '28 C',
                            isSmall: true),
                        WeatherWidgetTwo(
                            parameter: 'Somewhere',
                            parameterIcon: Icons.cloud,
                            value: '28 C',
                            isSmall: true),
                        WeatherWidgetTwo(
                            parameter: 'Somewhere',
                            parameterIcon: Icons.cloud,
                            value: '28 C',
                            isSmall: true),
                        WeatherWidgetTwo(
                            parameter: 'Somewhere',
                            parameterIcon: Icons.cloud,
                            value: '28 C',
                            isSmall: true),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 10),
                  Center(
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.5)),
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
