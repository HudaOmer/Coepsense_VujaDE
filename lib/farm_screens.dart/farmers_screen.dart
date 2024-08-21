import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/icons.dart';

class FarmersScreens extends StatelessWidget {
  const FarmersScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: contrastColor,
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
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      height: 600,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 5.0,
                                mainAxisSpacing: 5.0,
                                childAspectRatio: 1.5),
                        // padding: const EdgeInsets.all(5.0),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 300,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(farmer),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(children: [
                              Container(
                                margin: const EdgeInsets.all(15),
                                color: mainColor,
                                width: 60,
                                height: 30,
                                child: const Center(
                                  child: Text(
                                    'name',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ]),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
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
                fontSize: 18,
                fontWeight: FontWeight.w400)),
        const SizedBox(height: 10),
        Text(subtitle,
            style: TextStyle(
                color: isColored ? mainColor : Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w600)),
      ],
    );
  }
}
