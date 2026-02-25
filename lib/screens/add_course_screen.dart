import 'package:flutter/material.dart';
import 'course.dart';

class AddCourseScreen extends StatefulWidget {
  const AddCourseScreen({super.key});

  @override
  State<AddCourseScreen> createState() => _AddCourseScreenState();
}

class _AddCourseScreenState extends State<AddCourseScreen> {
  final nameController = TextEditingController();
  final creditController = TextEditingController();

  String semester = "Semester 1";
  bool isMandatory = false;
  String? error;

  void submit() {
    final name = nameController.text;
    final credit = int.tryParse(creditController.text);

    if (name.isEmpty || credit == null || credit <= 0) {
      setState(() => error = "Invalid input");
      return;
    }

    Navigator.pop(
      context,
      Course(
        name: name,
        credits: credit,
        semester: semester,
        isMandatory: isMandatory,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Course")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Course Name"),
            ),
            TextField(
              controller: creditController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Credits"),
            ),
            DropdownButton<String>(
              value: semester,
              items: ["Semester 1", "Semester 2", "Semester 3"]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) => setState(() => semester = v!),
            ),
            CheckboxListTile(
              title: const Text("Mandatory"),
              value: isMandatory,
              onChanged: (v) => setState(() => isMandatory = v!),
            ),
            if (error != null)
              Text(error!, style: const TextStyle(color: Colors.red)),
            ElevatedButton(onPressed: submit, child: const Text("Submit")),
          ],
        ),
      ),
    );
  }
}