import 'package:flutter/material.dart';
import '../../pages/farm/crop_price_page.dart';
import '../models/farm.dart';
import '../utils/colors.dart';
import '../pages/farm/income_and_expenses_page.dart';
import '../pages/farm/soil_moisture_page.dart';

class TestTwo extends StatelessWidget {
  final int length;
  final Farm farm;
  const TestTwo({super.key, required this.farm, required this.length});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(farm.name, style: const TextStyle(color: Colors.black)),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            _buildNavigationButton(
                context, 'Soil Moisture', const SoilMoisturePage(farmId: 0)),
            _buildNavigationButton(
                context, 'Income & Expenses', const IncomeAndExpensesPage()),
            _buildNavigationButton(
                context, 'Crop Price', const CropPricePage()),
            // Adjusted to use a Container with a fixed height
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  elevation: 4.0,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16.0),
                    title: Text(farm.name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Location: ${farm.location}"),
                        Text("Group id farm: ${farm.farmGroupId}"),
                        Text("Crops planted: ${farm.cropType}"),
                        Text("Size: ${farm.size}"),
                        Text("Description: ${farm.description}"),
                        Text("Date of creation: ${farm.createdAt}"),
                        Text("Date of update: ${farm.updatedAt}")
                      ],
                    ),
                    isThreeLine: true,
                    trailing: Text('No of farms: $length'),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationButton(
      BuildContext context, String label, Widget page) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(15.0),
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
