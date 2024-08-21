import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/icons.dart';
import '../global_widgets/round_image.dart';
import 'widgets/search_bar.dart';
import 'widgets/tasks_detail_widget.dart';

double appbarheight = 120;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: appbarheight,
        iconTheme: IconThemeData(color: contrastColor),
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu, size: 40),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.02),
            child: Row(
              children: [
                RoundImage(
                    image: notified,
                    size: 40,
                    borderWidth: 1,
                    color: mediumGreyColor),
                const SizedBox(width: 15),
                RoundImage(
                    image: farmer,
                    size: 50,
                    borderWidth: 0,
                    color: Colors.white),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const SearchBar(),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'Farmers',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              height: 600,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    childAspectRatio: 1.5),
                // padding: const EdgeInsets.all(5.0),
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

            // const WeatherWidget(),
            const SizedBox(height: 20),
            const TasksDetailWidget(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

//  Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 child: Container(
//                     padding: const EdgeInsets.all(20.0),
//                     color: contrastColor,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: const [
//                         Text('Productivity Rate',
//                             style: TextStyle(fontSize: 22, color: textColor))
//                       ],
//                     )),
//               ),
//             )