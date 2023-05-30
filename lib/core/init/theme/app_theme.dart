import 'package:flutter/material.dart';
import 'dark/dark_theme_data.dart';
import 'light/light_theme_data.dart';

abstract class AppTheme {
   static ThemeData getLightTheme() {
    return AppThemeLight.instance.theme;
  }

  static ThemeData getDarkTheme() {
    return AppThemeDark.instance.theme;
  }
}