import 'package:flutter/material.dart';
import '../global_widgets/colored_button.dart';
import '../utils/colors.dart';
import '../global_widgets/custom_appbar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        appBar: CustomAppBar(
          title: 'Details',
          color: mainColor,
          actions: const [Icon(Icons.more_vert)],
          body: [
            const TextColumn(isColored: false, title: 'Name', subtitle: 'Task'),
            Container(
                color: Colors.white,
                height: 0.5,
                width: MediaQuery.of(context).size.width * 0.85),
            const SizedBox(height: 20),
            const TextColumn(
                isColored: false, title: 'Date', subtitle: 'Aug 20, 2024'),
            Container(
                color: Colors.white,
                height: 0.5,
                width: MediaQuery.of(context).size.width * 0.85),
            const SizedBox(height: 10),
          ],
        ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      TextColumn(
                          isColored: true,
                          title: 'Start Time',
                          subtitle: '01:00 pm'),
                      TextColumn(
                          isColored: true,
                          title: 'End Time',
                          subtitle: '03:00 pm')
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      SizedBox(width: 30),
                      Text('Task Discription',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700)),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                  Row(
                    children: [
                      const SizedBox(width: 30),
                      Icon(Icons.image, color: contrastColor),
                      Icon(Icons.add_comment_sharp, color: contrastColor),
                    ],
                  ),
                  Center(
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.25)),
                  ColoredButton(
                      color: contrastColor, text: 'Done', onPressed: () {}),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ));
  }
}

class TextColumn extends StatelessWidget {
  final bool isColored;
  final String title;
  final String subtitle;
  const TextColumn(
      {super.key,
      required this.isColored,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(
                color: isColored ? Colors.black : Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400)),
        const SizedBox(height: 10),
        Text(subtitle,
            style: TextStyle(
                color: isColored ? mainColor : Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600)),
        const SizedBox(height: 5),
      ],
    );
  }
}
