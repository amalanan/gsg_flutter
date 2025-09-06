import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:session9/screens/screens.dart';
import 'routes.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        routes: {
          Routes.login: (context) => Login(),
          Routes.signup: (context) => SignUp(),
          Routes.home: (context) => Home(),
          Routes.main: (context) => MainApp(),
          Routes.freelancerDetails: (context) => FreelancerDetails(),
        },
        home: MainApp(),
      ),
    ),
  );
}
