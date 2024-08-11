import '../../components/home_page_components/colored_bar_chart_double.dart';
import 'package:flutter/material.dart';
import '../../components/today_weather_template.dart';
import '../../utils/colors.dart';

String title = 'Soil Moisture      ';

class SoilMoisturePage extends StatelessWidget {
  const SoilMoisturePage({super.key});

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
            const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Farm 1', textAlign: TextAlign.center)),
            ColoredBarChartDouble(
                firstWeeklySummary: const [50, 90, 50, 30, 25, 40, 35],
                secondWeeklySummary: const [80, 10, 30, 20, 40, 80, 30],
                firstBarColor: contrastColor,
                secondBarColor: mainColor),
            const WeeklySummaryChart(),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.width * 0.1),
              child: const Text('Weather', textAlign: TextAlign.center),
            ),
            const TodayWeatherTemplate(),
          ])),
    );
  }
}
