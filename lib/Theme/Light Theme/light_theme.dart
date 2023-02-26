library light_theme;

import 'package:flutter/material.dart';

class LightTheme {
  static Color backgroundColor = const Color(0xfff2f2f2);
  static Color primaryColor = const Color(0xfff2f2f2);
  static Color accentColor = const Color.fromARGB(255, 166, 188, 199);
  static Color particleColor = const Color.fromARGB(0, 209, 182, 182);

  static final value = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: backgroundColor,
    primaryColor: primaryColor,
    secondaryHeaderColor: accentColor,
    useMaterial3: true,
  );
}
