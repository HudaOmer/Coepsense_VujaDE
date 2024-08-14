import '../../components/home_page_components/colored_bar_chart.dart';
import 'package:flutter/material.dart';
import '../../components/today_weather_template.dart';
import '../../utils/colors.dart';

String title = 'Soil Moisture      ';

class SoilMoisturePage extends StatelessWidget {
  final int farmId;
  const SoilMoisturePage({super.key, required this.farmId});

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
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ColoredBarChart(
                    weeklySummary: const [50, 90, 50, 30, 25, 40, 35],
                    barColor: mainColor)),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ColoredBarChart(
                    weeklySummary: const [50, 90, 50, 30, 25, 40, 35],
                    barColor: mainColor)),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ColoredBarChart(
                    weeklySummary: const [50, 90, 50, 30, 25, 40, 35],
                    barColor: mainColor)),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ColoredBarChart(
                    weeklySummary: const [50, 90, 50, 30, 25, 40, 35],
                    barColor: mainColor)),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ColoredBarChart(
                    weeklySummary: const [50, 90, 50, 30, 25, 40, 35],
                    barColor: mainColor)),
            // const WeeklySummaryChart(),
            const Text('Weather', textAlign: TextAlign.center),
            const TodayWeatherTemplate(),
          ])),
    );
  }
}
