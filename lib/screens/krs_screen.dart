import 'package:flutter/material.dart';
import 'krs_detail_screen.dart';

class KrsScreen extends StatefulWidget {
  final String firstName;
  final String lastName;

  KrsScreen(this.firstName, this.lastName);

  @override
  _KrsScreenState createState() => _KrsScreenState();
}

class _KrsScreenState extends State<KrsScreen> {
  int credits = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KRS")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${widget.firstName} ${widget.lastName}"),
            Text("Credits: $credits"),

            ElevatedButton(
              onPressed: () => setState(() => credits += 3),
              child: Text("Add 3 Credits"),
            ),

            ElevatedButton(
              onPressed: () {
                if (credits >= 3) {
                  setState(() => credits -= 3);
                }
              },
              child: Text("Remove 3 Credits"),
            ),

            ElevatedButton(
              child: Text("Summary"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => KrsDetailScreen(
                      widget.firstName,
                      widget.lastName,
                      credits,
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
