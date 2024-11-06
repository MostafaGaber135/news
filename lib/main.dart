import 'package:flutter/material.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/widgets/custom_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CustomSplashScreen.routeName,
      routes: {
        CustomSplashScreen.routeName: (_) => const CustomSplashScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
      },
    );
  }
}
