// ignore_for_file: must_be_immutable

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:burble/loginpage.dart';
import 'package:burble/signuppage.dart';
import 'package:burble/welcomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(children: [
          Image.asset(
            'assets/burble.png',
            width: 300,
            height: 300,
          ),
        ]),
        backgroundColor: Color.fromARGB(255, 180, 201, 219),
        nextScreen: WelcomePage(),
        splashIconSize: 380);
  }
}
