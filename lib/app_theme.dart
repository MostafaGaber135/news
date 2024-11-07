import 'package:flutter/material.dart';

class AppTheme {
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightGray = Color(0xFFD3D3D3);
  static const Color primary = Color(0xFF39A552);
  static const Color grayBlue = Color(0xFF79828B);
  static const Color darkGray = Color(0xFF42505C);
  static const Color mediumGray = Color(0xFFA3A3A3);
  static const Color lightestGray = Color(0xFFF8F8F8);
  static const Color darkSlate = Color(0xFF3E4A59);
  static const Color charcoal = Color(0xFF303030);
  static const Color slateBlue = Color(0xFF353B50);
  static const Color navyBlue = Color(0xFF003E90);
  static Color slateBlueTransparent = const Color(0xFF353B50).withOpacity(0.99);
  static const Color lightBlue = Color(0xFF4882CF);
  static const Color mintGreen = Color(0xFF48CFAD);
  static const Color steelGray = Color(0xFF4F5A69);
  static const Color neutralGray = Color(0xFF707070);
  static const Color red = Color(0xFFC91C22);
  static const Color warmOrange = Color(0xFFCF7E48);
  static const Color magenta = Color(0xFFED1E79);
  static const Color paleGray = Color(0xFFEFEFEF);
  static const Color yellow = Color(0xFFF2D352);
  static const Color peach = Color(0xFFFFBE94);
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: primary,
      foregroundColor: white,
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(
            32,
          ),
        ),
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: white,
      ),
    ),
  );
}
