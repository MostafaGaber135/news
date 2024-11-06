import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news/screens/home_screen.dart';

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({super.key});
  static const routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.of(context).pushReplacementNamed(
        HomeScreen.routeName,
      );
    });
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/pattern.png',
            ),
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
      ),
    );
  }
}
