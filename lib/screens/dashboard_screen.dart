import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'krs_screen.dart';

class DashboardScreen extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String email;

  DashboardScreen(this.firstName, this.lastName, this.email);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello, ${widget.firstName} ${widget.lastName}",
                style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text(widget.email),

            SizedBox(height: 30),

            ElevatedButton(
              child: Text("Profile"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProfileScreen(
                      widget.firstName,
                      widget.lastName,
                      widget.email,
                    ),
                  ),
                );
              },
            ),

            ElevatedButton(
              child: Text("KRS"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => KrsScreen(
                      widget.firstName,
                      widget.lastName,
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
