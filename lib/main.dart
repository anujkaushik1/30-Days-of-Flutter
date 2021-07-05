import 'package:flutter/material.dart';
import 'package:loginn_page/Screens/homepage.dart';
import 'package:loginn_page/Screens/login_page.dart';
import 'package:loginn_page/utils/routes.dart';

void main() {
  runApp(MyCoolApp());
}

class MyCoolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //   home: HomePage(),             //ye rout ki tarah kaam kr rha hai
      routes: {
        "/": (context) => LoginPage(), // my default yeh page ke liye(intent launher jaisa hota hai yeh)
        MyRoutes.homeRoute: (context)=> HomePage(),
        MyRoutes.loginRoute: (context)=> LoginPage(),
      },
    );
  }
}
