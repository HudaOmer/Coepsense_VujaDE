import '../../components/colors.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../bar_chart_components/bar_data.dart';

class ColoredBarChart extends StatelessWidget {
  final List<double> weeklySummery;
  const ColoredBarChart({super.key, required this.weeklySummery});

  @override
  Widget build(BuildContext context) {
    MyBarData myBarData = MyBarData(
        sunAmount: weeklySummery[0],
        monAmount: weeklySummery[1],
        tueAmount: weeklySummery[2],
        wedAmount: weeklySummery[3],
        thuAmount: weeklySummery[4],
        friAmount: weeklySummery[5],
        satAmount: weeklySummery[6]);

    myBarData.initializeBarData();
    return Container(
      padding: const EdgeInsets.fromLTRB(30.0, 5, 10, 5),
      height: 300,
      child: BarChart(BarChartData(
        maxY: 2000,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true, getTitlesWidget: getBottomTitles)),
          // leftTitles: AxisTitles(
          //     sideTitles: SideTitles(
          //   showTitles: true,
          //   getTitlesWidget: (value, meta) => Text(
          //     value.toInt().toString(),
          //     style: const TextStyle(fontSize: 8),
          //     maxLines: 1,
          //   ),
          // )),
        ),
        backgroundColor: greyColor,
        barGroups: myBarData.barData
            .map((data) => BarChartGroupData(x: data.x, barRods: [
                  BarChartRodData(
                      toY: data.y,
                      color: mainColor,
                      width: 10.0,
                      borderRadius: BorderRadius.circular(40.0))
                ]))
            .toList(),
      )),
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  List<String> weekdays = ['sun', 'Mon', 'Tue', 'wed', 'thu', 'fri', 'sat'];

  return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        weekdays[value.toInt()],
        style: const TextStyle(fontSize: 10),
      ));
}
