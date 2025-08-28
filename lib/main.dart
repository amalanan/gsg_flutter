import 'package:flutter/material.dart';
import 'package:session9/screens/screens.dart';
import 'routes.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.login: (context) => Login(),
        Routes.signup: (context) => SignUp(),
        Routes.home: (context) => Home(),
        Routes.main: (context) => MainApp(),
        //  Routes.freelancerDetails: (context) => Login(),

      },
      home: MainApp(),
    ),
  );
}
