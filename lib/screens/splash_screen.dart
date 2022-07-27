import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ez_shop/screens/welcome_screen.dart';
import 'package:ez_shop/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    const delay = const Duration(seconds: 3);
    Future.delayed(delay, () => onTimerFinished());
  }

  void onTimerFinished() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
      builder: (BuildContext context) {
        return WelcomeScreen();
      },
    ));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal :30),
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/splash_screen.png"),
          fit: BoxFit.cover,)
        ),
      ),
    );
  }
}
