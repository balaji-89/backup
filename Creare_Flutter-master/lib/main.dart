import 'package:Creare_Flutter/screens/splash_screen.dart';
import 'package:Creare_Flutter/screens/student_dashboard_screen.dart';
import 'package:flutter/material.dart';

import './constants/constant_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: appAccentColor,
        primaryColor: appPrimaryColor,
      ),
      home: SplashScreen(),
    );
  }
}
