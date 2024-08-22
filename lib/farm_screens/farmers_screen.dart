import 'package:flutter/material.dart';
import '../global_widgets/custom_appbar.dart';
import '../utils/colors.dart';
import '../utils/icons.dart';

class FarmersScreens extends StatelessWidget {
  const FarmersScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: contrastColor,
      appBar: CustomAppBar(
        color: contrastColor,
        image: farmer,
        body: [
          const Center(
            child: Text('Last Farmers',
                style: TextStyle(fontSize: 28, color: Colors.white)),
          ),
          const SizedBox(height: 30),
          Container(
            height: 50,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: 600,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
      ),
    );
  }
}
