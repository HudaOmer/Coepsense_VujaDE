import '../../provider/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/task.dart';
import '../../provider/tasks_provider.dart';
import '../../utils/colors.dart';

const String title = 'Add Task        ';

class CreateTaskPage extends ConsumerWidget {
  const CreateTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeController = TextEditingController();
    final descriptionController = TextEditingController();
    final dueDateController = TextEditingController();
    DateTime? selectedDate;

    Future<void> selectDate() async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              primaryColor: mainColor,
              accentColor: mainColor,
              buttonTheme:
                  const ButtonThemeData(textTheme: ButtonTextTheme.primary),
            ),
            child: child!,
          );
        },
      );

      if (picked != null && picked != selectedDate) {
        selectedDate = picked;
      }
    }

    void createTask() async {
      final farmGroupId = await AuthService.getGroupId();
      if (farmGroupId == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Farm group ID is not set')),
        );
        return;
      }
      final task = Task(
        title: timeController.text,
        description: descriptionController.text,
        dueDate: DateTime.tryParse(dueDateController.text),
        status: 1,
        farmGroupId: farmGroupId,
        assignedToId: null,
        createdAt: null,
        updatedAt: null,
      );

      try {
        // Call the provider to store the task
        await ref.read(storeTaskProvider(task).future);
        // Navigate back if the task creation is successful
        Navigator.pop(context);
      } catch (e) {
        // Handle errors here
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to create task: $e')),
        );
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Center(
              child: Text(title, style: TextStyle(color: Colors.black))),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios, color: Colors.black))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextField(
                controller: descriptionController,
                maxLines: 100,
                minLines: 10,
                decoration: InputDecoration(
                  labelText: 'Description',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  alignLabelWithHint: true,
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: selectDate,
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: dueDateController,
                    decoration: InputDecoration(
                      labelText: 'Due Date',
                      hintText: selectedDate != null
                          ? '${selectedDate!.toLocal()}'.split(' ')[0]
                          : 'Select Date',
                      prefixIcon: const Icon(Icons.calendar_today),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          dueDateController.clear();
                          selectedDate = null;
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: timeController,
                decoration: InputDecoration(
                  labelText: 'Due Time',
                  prefixIcon: const Icon(Icons.timer),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      dueDateController.clear();
                      selectedDate = null;
                    },
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(mainColor)),
                  onPressed: createTask,
                  child: const Text('Add'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
