import 'package:flutter/material.dart';
import 'krs_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle, size: 80),
            SizedBox(height: 10),
            Text("Nama: Jessica Christiana"),
            Text("Major: IT"),
            Text("NIM: 0420230009"),
            Text("Address: Semarang"),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Go to KRS"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KrsScreen(),
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
