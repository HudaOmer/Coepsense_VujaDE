import 'package:flutter/material.dart';
import '../../components/crop_item.dart';
import '../../models/crop.dart';

String title = 'Crop Prices       ';

class CropPricePage extends StatelessWidget {
  const CropPricePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Center(
                child:
                    Text(title, style: const TextStyle(color: Colors.black))),
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
              const CropItem(
                crop: Crop(
                    date: 'Sun, Jul 28',
                    name: 'Garlic',
                    price: 300,
                    quantity: 20),
              ),
              const CropItem(
                crop: Crop(
                    date: 'Sun, Jul 28',
                    name: 'Tomato',
                    price: 200,
                    quantity: 25),
              ),
              const CropItem(
                crop: Crop(
                    date: 'Sun, Jul 28',
                    name: 'Carrot',
                    price: 100,
                    quantity: 30),
              )
            ],
          ),
        ));
  }
}
