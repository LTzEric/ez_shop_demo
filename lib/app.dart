import 'package:flutter/material.dart';
import 'package:ez_shop/screens/splash_screen.dart';
import 'package:ez_shop/styles/theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: SplashScreen(),
    );
  }
}
