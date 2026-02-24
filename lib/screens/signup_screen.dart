import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirm = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 60),

              Text("REGISTER FORM",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),

              SizedBox(height: 30),

              TextFormField(
                controller: firstName,
                decoration: InputDecoration(labelText: "First Name"),
                validator: (v) => v!.isEmpty ? "Required" : null,
              ),

              TextFormField(
                controller: lastName,
                decoration: InputDecoration(labelText: "Last Name"),
                validator: (v) => v!.isEmpty ? "Required" : null,
              ),

              TextFormField(
                controller: email,
                decoration: InputDecoration(labelText: "Email"),
                validator: (v) => v!.isEmpty ? "Required" : null,
              ),

              TextFormField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(labelText: "Password"),
              ),

              TextFormField(
                controller: confirm,
                obscureText: true,
                decoration: InputDecoration(labelText: "Confirm Password"),
                validator: (v) =>
                    v != password.text ? "Password not match" : null,
              ),

              SizedBox(height: 20),

              ElevatedButton(
                child: Text("Register"),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => LoginScreen(
                          firstName: firstName.text,
                          lastName: lastName.text,
                        ),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
