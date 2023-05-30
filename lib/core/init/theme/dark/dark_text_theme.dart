import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';

class TextThemeDark {
  static TextThemeDark? _instance;
  static TextThemeDark? get instance {
    _instance ??= TextThemeDark._init();
    return _instance;
  }

  TextThemeDark._init();

  final TextStyle bodySmall = TextStyle(
    fontSize: 12,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    height: 1.33,
  );

  final TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    height: 1.43,
  );

  final TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 1.5,
  );

  final TextStyle labelSmall = TextStyle(
    fontSize: 11,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.45,
  );

  final TextStyle labelMedium = TextStyle(
    fontSize: 12,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.33,
  );

  final TextStyle labelLarge = TextStyle(
    fontSize: 14,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.43,
  );

  final TextStyle titleSmall = TextStyle(
    fontSize: 14,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.43,
  );

  final TextStyle titleMedium = TextStyle(
    fontSize: 16,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    height: 1.5,
  );

  final TextStyle titleLarge = TextStyle(
    fontSize: 22,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w400,
    height: 1.27,
  );

  final TextStyle headlineSmall = TextStyle(
    fontSize: 24,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w400,
    height: 1.33,
  );

  final TextStyle headlineMedium = TextStyle(
    fontSize: 28,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w400,
    height: 1.29,
  );

  final TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w400,
    height: 1.25,
  );

  final TextStyle displaySmall = TextStyle(
    fontSize: 36,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w400,
    height: 1.22,
  );

  final TextStyle displayMedium = TextStyle(
    fontSize: 45,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w400,
    height: 1.16,
  );

  final TextStyle displayLarge = TextStyle(
    fontSize: 57,
    color: ColorConstants.instance.white,
    fontWeight: FontWeight.w400,
    height: 1.23,
  );
}
