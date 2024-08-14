import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../components/today_weather_template.dart';
import '../../provider/weekly_data_provider.dart';
import '../../utils/colors.dart';
import '../../components/home_page_components/colored_bar_chart.dart';

// String title = 'Soil Moisture      ';

class SoilMoisturePage extends ConsumerWidget {
  final int farmId;
  final String farmName;
  const SoilMoisturePage(
      {super.key, required this.farmId, required this.farmName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weeklyDataAsyncValue = ref.watch(weeklyDataProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Center(
              child: Text(farmName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black))),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios, color: Colors.black))),
      body: SingleChildScrollView(
          child: weeklyDataAsyncValue.when(
        data: (weeklyData) {
          return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ColoredBarChart(
                        weeklySummary: weeklyData.humidities,
                        barColor: mainColor,
                        name: "Humidities")),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ColoredBarChart(
                        weeklySummary: weeklyData.temperatures,
                        barColor: contrastColor,
                        name: 'Temperature')),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ColoredBarChart(
                        weeklySummary: weeklyData.tds,
                        barColor: mainColor,
                        name: 'TDS')),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ColoredBarChart(
                        weeklySummary: weeklyData.soilMoistures,
                        barColor: contrastColor,
                        name: 'Soil Moisture')),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ColoredBarChart(
                        weeklySummary: weeklyData.lights,
                        barColor: mainColor,
                        name: 'Light')),
                // const WeeklySummaryChart(),
                const Text('Weather', textAlign: TextAlign.center),
                const TodayWeatherTemplate(),
              ]);
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      )),
    );
  }
}
