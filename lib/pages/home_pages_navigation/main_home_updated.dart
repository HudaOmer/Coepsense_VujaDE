import '../../utils/colors.dart';
import '../../components/home_page_components/bars_template.dart';
import '../../components/home_page_components/weather_template.dart';
import '../../components/icon_customized.dart';
import '../../utils/icons.dart';
import 'package:flutter/material.dart';

import '../../components/home_page_components/zones_template.dart';

double appbarheight = 120;

class MainHomePageUpdated extends StatelessWidget {
  const MainHomePageUpdated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: appbarheight,
        iconTheme: IconThemeData(color: contrastColor),
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Morning!',
                style: TextStyle(color: mainColor, fontSize: 15)),
            const SizedBox(height: 5),
            Text('Huda', style: TextStyle(color: contrastColor, fontSize: 25)),
            const SizedBox(height: 5),
            Image.asset(notified, height: 25)
          ],
        ),
        actions: [IconCustomized(height: appbarheight, iconName: farmer)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 20),
            ZoneList(),
            SizedBox(height: 10),
            WeatherContainer(),
            SizedBox(height: 15),
            BarsContainer(),
          ],
        ),
      ),
    );
  }
}
