import 'package:flutter/material.dart';
import 'package:furniture_app/pages/authentication_page/authentication_screen.dart';
import 'package:furniture_app/pages/dashboard_page/dashboard_screen.dart';
import 'package:furniture_app/pages/forgot_pass_page/forgot_pass_page.dart';
import 'package:furniture_app/pages/login_page/login_screen.dart';
import 'package:furniture_app/pages/sign_up_page/sign_up_screen.dart';


var routes = <String, WidgetBuilder>{
  "/authentication": (BuildContext context) => AuthenticationScreen(),
  "/sign_up": (BuildContext context) => SignUpScreen(),
  "/login": (BuildContext context) => LoginScreen(),
  "/forgot_pass": (BuildContext context) => ForgotPassScreen(),
  "/dashboard": (BuildContext context) => DashboardScreen()
};

void main() {
  runApp(MaterialApp(
      theme:
      ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      debugShowCheckedModeBanner: false,
      home: AuthenticationScreen(),
      routes: routes));
}
