import 'package:flutter/material.dart';
import '../../archive/utils/colors.dart';
import '../../archive/utils/icons.dart';

class Logo extends StatelessWidget {
  final bool isColored;
  const Logo({super.key, required this.isColored});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
          width: 100, child: Image.asset(isColored ? logoGreen : logoWhite)),
      const SizedBox(height: 25),
      Center(
          child: Text("CropSense",
              style: TextStyle(
                  color: isColored ? contrastColor : Colors.white,
                  fontSize: 20,
                  fontFamily: "Saken")))
    ]);
  }
}
