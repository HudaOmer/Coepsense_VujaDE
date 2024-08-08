import '../../components/home_page_components/category_list.dart';
import '../../components/home_page_components/search_bar.dart';
import '../../utils/colors.dart';
import '../../components/home_page_components/weather_template.dart';
import '../../utils/icons.dart';
import 'package:flutter/material.dart';
import 'tasks.dart';

double appbarheight = 120;

class Home extends StatelessWidget {
  const Home({super.key});

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
                style: TextStyle(
                    color: mainColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w300)),
            const SizedBox(height: 5),
            Text('Huda',
                style: TextStyle(
                    color: contrastColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w300)),
            const SizedBox(height: 5),
          ],
        ),
        actions: [Image.asset(notified, height: 25)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(child: SearchBar()),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TasksPage()));
              },
              child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 17.0),
                      const Icon(Icons.library_books_outlined,
                          size: 30, color: Colors.white),
                      const SizedBox(width: 17.0),
                      const Text('Tasks',
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.5),
                      const Text('10',
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                    ],
                  )),
            ),
            const SizedBox(height: 10),
            const WeatherTemplate(),
            const SizedBox(height: 10),
            const CategoryList(),
          ],
        ),
      ),
    );
  }
}
