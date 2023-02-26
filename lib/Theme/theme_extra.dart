library theme_extra;

import 'package:animated_counter_app/Theme/Dark%20Theme/dark_theme.dart';
import 'package:animated_counter_app/Theme/Light%20Theme/light_theme.dart';
import 'package:flutter/material.dart';

extension ThemeExtra on ThemeData {
  Color get particleColor => brightness == ThemeMode.light
      ? LightTheme.particleColor
      : DarkTheme.particleColor;
}
