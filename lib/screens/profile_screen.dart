import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;

  ProfileScreen(this.firstName, this.lastName, this.email);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle, size: 80),
            Text("Name: $firstName $lastName"),
            Text("Email: $email"),
          ],
        ),
      ),
    );
  }
}
