import 'package:dairy_farm_app/src/utils/theme.dart/theme_widget/text_theme.dart';
import 'package:flutter/material.dart';

class FTheme {
  FTheme._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: FTextTheme.lightTheme
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark
  );
}
