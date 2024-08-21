import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../components/home_page_components/category_list.dart';
import '../../components/home_page_components/search_bar.dart';
import '../../utils/colors.dart';
import '../../components/home_page_components/weather_template.dart';
import '../../provider/tasks_provider.dart';
import '../../utils/icons.dart';
import 'tasks_page.dart';

double appbarheight = 120;

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    // Trigger an initial data fetch
    ref.refresh(fetchTasksProvider);
  }

  @override
  Widget build(BuildContext contex) {
    final tasksAsyncValue = ref.refresh(fetchTasksProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: appbarheight,
        iconTheme: IconThemeData(color: contrastColor),
        backgroundColor: Colors.white,
        title: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Good Morning!',
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w300)),
              const SizedBox(height: 5),
              Text('Huda',
                  style: TextStyle(
                      color: contrastColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w300)),
              const SizedBox(height: 5),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.02),
            child: Image.asset(notified, height: 25),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(child: SearchBar()),
            const SizedBox(height: 30),
            tasksAsyncValue.when(
              data: (tasks) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TasksPage(tasks: tasks),
                      ),
                    );
                  },
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 17.0),
                        const Icon(Icons.library_books_outlined,
                            size: 30, color: Colors.white),
                        const SizedBox(width: 17.0),
                        const Text('Tasks',
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5),
                        Text('${tasks.length}',
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white)),
                      ],
                    ),
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) =>
                  Center(child: Text('Error: $error')),
            ),
            const SizedBox(height: 10),
            const WeatherTemplate(),
            const SizedBox(height: 10),
            const CategoryList(),
          ],
        ),
      ),
    );
  }
}
