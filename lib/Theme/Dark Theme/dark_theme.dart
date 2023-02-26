library dark_theme;

import 'package:flutter/material.dart';

class DarkTheme {
  static Color backgroundColor = const Color(0xff1a2127);
  static Color primaryColor = const Color(0xff1a2127);
  static Color accentColor = Colors.blueGrey.shade600;
  static Color particleColor = Color.fromARGB(255, 255, 255, 255);

  static final value = ThemeData(
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: backgroundColor,
    primaryColor: primaryColor,
    secondaryHeaderColor: accentColor,
    useMaterial3: true,
  );
}
