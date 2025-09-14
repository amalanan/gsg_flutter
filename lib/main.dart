import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart'; // استيراد مكتبة device_preview
import 'package:session9/screens/screens.dart';
import 'routes.dart';

void main() {
  runApp(
    DevicePreview( // لف الـ MaterialApp عشان يشتغل الـ DevicePreview
      enabled: true, // خليها false لما ترفعي المشروع
      builder: (context) => MaterialApp(
        // ignore: deprecated_member_use
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        routes: {
          Routes.login: (context) => Login(),
          Routes.signup: (context) => SignUp(),
          Routes.home: (context) => Home(),
          Routes.main: (context) => MainNavScreen(),
          Routes.freelancerDetails: (context) => FreelancerDetails(),
        },
        home: MainNavScreen(),
      ),
    ),
  );
}
