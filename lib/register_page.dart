import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final String title;
  const RegisterPage(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register page"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}