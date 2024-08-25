import 'package:flutter/material.dart';
import '../global_widgets/custom_appbar.dart';
import '../home_screens/widgets/custom_grid_widget.dart';
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
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
          ),
          const SizedBox(height: 60),
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
          child: SizedBox(
              height: 600,
              child: Column(
                children: const [CustomGridWidget(), CustomGridWidget()],
              )),
        ),
      ),
    );
  }
}
