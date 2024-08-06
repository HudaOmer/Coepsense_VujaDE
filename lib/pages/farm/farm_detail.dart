import 'package:flutter/material.dart';
import '../../../pages/farm/crop_price_page.dart';
import '../../utils/colors.dart';
import 'soil_moisture_page.dart';

String title = 'Farm 1      ';

class FarmDetailPage extends StatelessWidget {
  const FarmDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Center(
              child: Text(title, style: const TextStyle(color: Colors.black))),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios, color: Colors.black))),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SoilMoisturePage()),
                );
              },
              child: Center(
                child: Container(
                    width: 300,
                    padding: const EdgeInsets.all(15.0),
                    margin: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: const Text('Soil Moisture',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SoilMoisturePage()),
                );
              },
              child: Center(
                child: Container(
                    width: 300,
                    padding: const EdgeInsets.all(15.0),
                    margin: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: const Text('Soil Moisture',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CropPricePage()),
                );
              },
              child: Center(
                child: Container(
                    width: 300,
                    padding: const EdgeInsets.all(15.0),
                    margin: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: const Text('Crop Price',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
              ),
            ),
          ])),
    );
  }
}
