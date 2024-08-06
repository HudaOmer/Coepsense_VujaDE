import 'package:flutter/material.dart';
import '../components/farm_item.dart';
import 'farm/farm_detail_page.dart';

String title = 'List Of Farms      ';

class FarmsPage extends StatelessWidget {
  const FarmsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Center(
              child: Text(title, style: const TextStyle(color: Colors.black))),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.arrow_back_ios, color: Colors.black)),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            FarmItem(onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FarmDetailPage()),
              );
            }),
            FarmItem(onTap: () {}),
            FarmItem(onTap: () {})
          ])),
    );
  }
}
