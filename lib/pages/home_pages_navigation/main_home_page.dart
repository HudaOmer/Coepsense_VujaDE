import '../../components/colors.dart';
import '../../components/home_page_components/category_list.dart';
import '../../components/home_page_components/search_bar.dart';
import '../../components/icon_customized.dart';
import '../../components/icons.dart';
import 'package:flutter/material.dart';

double appbarheight = 170;

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

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
            const SizedBox(height: 10),
            Text('Huda', style: TextStyle(color: contrastColor, fontSize: 25))
          ],
        ),
        actions: [IconCustomized(height: appbarheight, iconName: farmer)],
      ),
      body: Column(
        children: const [
          Center(child: SearchBar()),
          SizedBox(height: 30),
          CategoryList(),
        ],
      ),
    );
  }
}
