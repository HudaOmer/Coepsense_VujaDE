import 'package:flutter/material.dart';

class WeatherItemOne extends StatelessWidget {
  final String parameter;
  final IconData parameterIcon;
  final String value;
  final Widget widget;
  const WeatherItemOne(
      {super.key,
      required this.parameter,
      required this.parameterIcon,
      required this.value,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Center(
            child: Container(
                padding: const EdgeInsets.all(15.0),
                width: 220,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, -2)),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text(parameter), Icon(parameterIcon)]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text(value), widget])
                  ],
                ))));
  }
}

class WeatherWidgetTwo extends StatelessWidget {
  final String parameter;
  final IconData parameterIcon;
  final String value;
  final bool isSmall;
  const WeatherWidgetTwo(
      {super.key,
      required this.parameter,
      required this.parameterIcon,
      required this.value,
      required this.isSmall});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Container(
                padding: EdgeInsets.all(isSmall ? 5.0 : 10.0),
                width: isSmall ? 100 : 150,
                height: isSmall ? 120 : 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, -2)),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text(parameter), Icon(parameterIcon), Text(value)],
                ))));
  }
}
