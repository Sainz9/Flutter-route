import 'package:aa/home_page.dart';
import 'package:aa/routes.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
   home: HomePage(),
   routes: routes,
    );
  }
}