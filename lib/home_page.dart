import 'package:aa/login_page.dart';
import 'package:aa/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() =>
      _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  void onLoginPage(){
    // Navigator.push(
    //   context,
    //    MaterialPageRoute(builder: (context) => LoginPage()),
    // );
    Navigator.pushNamed(context, RouteNames.LoginPage.route);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: onLoginPage,
              child: Text("Login page Орох"),
            ),
            Text("Home Page"),
          ],
        ),
      ),
    );
  }
}
