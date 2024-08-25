import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/icons.dart';
import '../global_widgets/round_image.dart';
import 'widgets/custom_grid_widget.dart';
import 'widgets/search_bar.dart';
import 'widgets/tasks_detail_widget.dart';

double appbarheight = 120;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: appbarheight,
        iconTheme: IconThemeData(color: contrastColor),
        backgroundColor: Colors.white,
        leading: Row(
          children: const [
            SizedBox(width: 25),
            Icon(Icons.menu, size: 30),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.02),
            child: Row(
              children: [
                RoundImage(
                    image: notified,
                    size: 30,
                    borderWidth: 1,
                    color: mediumGreyColor),
                const SizedBox(width: 10),
                RoundImage(
                    image: farmer,
                    size: 40,
                    borderWidth: 0,
                    color: Colors.white),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const SearchBar(),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'My Farmers',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            const CustomGridWidget(),
            const SizedBox(height: 20),
            const TasksDetailWidget(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
