import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:device_preview/device_preview.dart'; // استيراد مكتبة device_preview
=======
import 'package:device_preview/device_preview.dart';
>>>>>>> ced879a4e675c1cfa05c213e0718699f54bcd5ba
import 'package:session9/screens/screens.dart';
import 'routes.dart';

void main() {
  runApp(
<<<<<<< HEAD
    DevicePreview( // لف الـ MaterialApp عشان يشتغل الـ DevicePreview
      enabled: true, // خليها false لما ترفعي المشروع
      builder: (context) => MaterialApp(
        // ignore: deprecated_member_use
=======
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
>>>>>>> ced879a4e675c1cfa05c213e0718699f54bcd5ba
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        routes: {
          Routes.login: (context) => Login(),
          Routes.signup: (context) => SignUp(),
          Routes.home: (context) => Home(),
<<<<<<< HEAD
          Routes.main: (context) => MainNavScreen(),
          Routes.freelancerDetails: (context) => FreelancerDetails(),
        },
        home: MainNavScreen(),
=======
          Routes.main: (context) => MainApp(),
          Routes.freelancerDetails: (context) => FreelancerDetails(),
        },
        home: MainApp(),
>>>>>>> ced879a4e675c1cfa05c213e0718699f54bcd5ba
      ),
    ),
  );
}
