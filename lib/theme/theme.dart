import 'package:flutter/material.dart';

class ThemeController {
  // light theme
  static ThemeData lightTheme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black),
      colorScheme: const ColorScheme.light(
        primary: Colors.orange,
      ));

  // dark theme
  static ThemeData darkTheme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 0),
      colorScheme: const ColorScheme.light(
        primary: Colors.orange,
      ));
}
