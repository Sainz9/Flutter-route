import 'package:aa/home_page.dart';
import 'package:aa/login_page.dart';
import 'package:aa/register_page.dart';
import 'package:flutter/material.dart';

enum RouteNames {
  HomePage,
  LoginPage,
  RegisterPage;

  String get route {
    switch (this) {
      case RouteNames.HomePage:
        return "home";
      case RouteNames.LoginPage:
        return "login";
      case RouteNames.RegisterPage:
        return "register";
    }
  }
}

var routes = <String, WidgetBuilder> {
  RouteNames.HomePage.route: (_) => HomePage(),
  RouteNames.LoginPage.route: (_) => LoginPage(),
  RouteNames.RegisterPage.route: (_) => RegisterPage("Named route ashiglaw"),

};