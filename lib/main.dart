import 'package:flutter/material.dart';
import 'package:furniture_app/pages/authentication_page/authentication_screen.dart';
import 'package:furniture_app/pages/checkout_page/checkout_screen.dart';
import 'package:furniture_app/pages/dashboard_page/dashboard_screen.dart';
import 'package:furniture_app/pages/forgot_pass_page/forgot_pass_page.dart';
import 'package:furniture_app/pages/furniture_detail_page/furniture_detail_screen.dart';
import 'package:furniture_app/pages/login_page/login_screen.dart';
import 'package:furniture_app/pages/onboarding_page/onboarding_screen.dart';
import 'package:furniture_app/pages/search_page/search_screen.dart';
import 'package:furniture_app/pages/shopping_cart/shopping_cart_screen.dart';
import 'package:furniture_app/pages/sign_up_page/sign_up_screen.dart';


var routes = <String, WidgetBuilder> {
  "/authentication": (BuildContext context) => AuthenticationScreen(),
  "/sign_up": (BuildContext context) => SignUpScreen(),
  "/login": (BuildContext context) => LoginScreen(),
  "/forgot_pass": (BuildContext context) => ForgotPassScreen(),
  "/onboarding": (BuildContext context) => OnboardingScreen(),
  "/dashboard": (BuildContext context) => DashboardScreen(),
  "/furniture_detail" : (BuildContext context) => FurnitureDetailScreen(),
  "/search" : (BuildContext context) => SearchScreen(),
  "/shopping_cart" : (BuildContext context) => ShoppingCartScreen(),
  "/checkout" : (BuildContext context) => CheckoutScreen()

};

void main() {
  runApp(MaterialApp(
      theme:
      ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      debugShowCheckedModeBanner: false,
      home: AuthenticationScreen(),
      routes: routes));
}
