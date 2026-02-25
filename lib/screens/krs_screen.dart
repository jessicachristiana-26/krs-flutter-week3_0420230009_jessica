import 'package:flutter/material.dart';
import 'add_course_screen.dart';
import 'course.dart';
import 'krs_detail_screen.dart';

class KRSScreen extends StatefulWidget {
  final String firstName;
  final String lastName;

  KRSScreen(this.firstName, this.lastName);

  @override
  _KRSScreenState createState() => _KRSScreenState();
}

class _KRSScreenState extends State<KRSScreen> {
  List<Course> courses = [];
  int totalCredits = 0;

  Future<void> addCourse() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const AddCourseScreen()),
    );

    if (result != null && result is Course) {
      setState(() {
        courses.add(result);
        totalCredits += result.credits;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("KRS")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text("${widget.firstName} ${widget.lastName}",
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: courses.length,
                itemBuilder: (_, i) => ListTile(
                  title: Text(courses[i].name),
                  subtitle:
                      Text("${courses[i].credits} SKS | ${courses[i].semester}"),
                ),
              ),
            ),

            Text("Total Credits: $totalCredits"),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: addCourse,
              child: const Text("Add Course"),
            ),

            ElevatedButton(
              child: const Text("Summary"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => KrsDetailScreen(
                      widget.firstName,
                      widget.lastName,
                      totalCredits,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}