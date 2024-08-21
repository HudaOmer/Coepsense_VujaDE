import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../components/farm_item.dart';
import '../../provider/farm_provider.dart';
import 'soil_moisture_page.dart';

String title = 'Farms       ';

class TestPage extends ConsumerWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the farmsProvider to get farm data
    final farmsAsyncValue = ref.watch(farmsProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(title, style: const TextStyle(color: Colors.black)),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        // leading: InkWell(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child: const Icon(Icons.arrow_back_ios, color: Colors.black),
        // ),
      ),
      body: farmsAsyncValue.when(
        data: (farms) {
          return SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Column(
                  children: farms.map((farm) {
                    return FarmItem(
                      name: farm.name,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SoilMoisturePage(
                                farmName: farm.name, farmId: farm.id),
                          ),
                        );
                      },
                    );
                  }).toList(),
                )
              ]));
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
