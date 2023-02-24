library light_theme;

import 'package:flutter/material.dart';

class LightTheme {
  static Color backgroundColor = const Color(0xfff2f2f2);
  static Color primaryColor = const Color(0xfff2f2f2);
  static Color accentColor = Colors.blueGrey.shade200;
  static Color particleColor = const Color(0x44948282);

  static final value = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: backgroundColor,
    primaryColor: primaryColor,
    secondaryHeaderColor: accentColor,
    useMaterial3: true,
  );
}
