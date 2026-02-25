import 'package:flutter/material.dart';

class KrsDetailScreen extends StatelessWidget {
  final String firstName;
  final String lastName;
  final int credits;

  KrsDetailScreen(this.firstName, this.lastName, this.credits);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("KRS Summary")),
      body: Center(
        child: Text(
          "Hello $firstName $lastName\nTotal Credits: $credits",
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}