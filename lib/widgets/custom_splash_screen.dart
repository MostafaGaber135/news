import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/screens/home_screen.dart';

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({super.key});
  static const String routeName = 'splash';
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

    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.white,
        image: DecorationImage(
          image: AssetImage(
            'assets/images/pattern.png',
          ),
        ),
      ),
      child: Scaffold(
        body: Center(
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
      ),
    );
  }
}
