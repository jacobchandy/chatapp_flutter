import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade200,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade900,
  ),
  scaffoldBackgroundColor:
      Colors.grey.shade300, // Background color for Scaffold
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade500,
    titleTextStyle: const TextStyle(
        color: Colors.white, fontSize: 20), // Use primary color for AppBar
    iconTheme:
        const IconThemeData(color: Colors.white), // Set the AppBar icons color
  ),
  iconTheme: IconThemeData(color: Colors.grey.shade500), // General icon color
);
