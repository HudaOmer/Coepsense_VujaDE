import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/icons.dart';

class CustomGridWidget extends StatelessWidget {
  const CustomGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            BlockWidget(),
            BlockWidget(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            BlockWidget(),
            BlockWidget(),
          ],
        )
      ],
    );
  }
}

class BlockWidget extends StatelessWidget {
  const BlockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 170,
        height: 100,
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: AssetImage(farmer),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: mainColor),
            width: 50,
            height: 20,
            child: const Center(
              child: Text('name',
                  style: TextStyle(color: Colors.white, fontSize: 11)),
            ),
          )
        ]),
      ),
    );
  }
}

class CustomGridWidget2 extends StatelessWidget {
  const CustomGridWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          height: 600,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 1.5),
            padding: const EdgeInsets.all(5.0),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
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
      ],
    );
  }
}
