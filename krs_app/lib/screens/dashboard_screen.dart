import 'package:flutter/material.dart';
import 'profile_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Center(
        child: ElevatedButton(
          child: Text("Open Profile"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
