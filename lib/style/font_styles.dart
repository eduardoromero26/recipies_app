import 'package:flutter/material.dart';
import 'package:recipies_app/style/color_theme.dart';

class TypographyTheme {
  static const fontSemi24Px = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      fontFamily: 'Rubik',
      color: ColorsTheme.headingColor);
  static const fontSemi20Px = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Rubik',
      color: ColorsTheme.headingColor);
  static const fontMedium20Px = TextStyle(
      fontSize: 20, fontFamily: 'Rubik', color: ColorsTheme.headingColor);
  static const fontRegular16Px = TextStyle(
      fontSize: 16, fontFamily: 'Rubik', color: ColorsTheme.textColor);
  static const fontLight14Px = TextStyle(
      fontSize: 14, fontFamily: 'Rubik', color: ColorsTheme.textColor);
}
