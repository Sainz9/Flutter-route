import 'package:aa/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void onRegisterPage(BuildContext context ){
    // Navigator.pop(context);
    // Navigator.push(
    //   context,
    //    MaterialPageRoute(builder: (Context) => RegisterPage("Login pagees irew") 
    //    ),
    // );
    Navigator.popAndPushNamed(context, "register");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => onRegisterPage(context),
             child: Text("Register page oroh"),
             ),
             Text("Login page"),
          ],
          ) 
      ),
    );
  }
}