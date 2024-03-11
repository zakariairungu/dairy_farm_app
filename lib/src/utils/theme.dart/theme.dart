import 'package:dairy_farm_app/src/utils/theme.dart/theme_widget/elevated_button_theme.dart';
import 'package:dairy_farm_app/src/utils/theme.dart/theme_widget/text_theme.dart';
import 'package:flutter/material.dart';

class FTheme {
  FTheme._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: FTextTheme.lightTheme,
    elevatedButtonTheme: FElevatedButtonTheme.lightTheme
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: FTextTheme.darkTheme,
    elevatedButtonTheme: FElevatedButtonTheme.darkTheme
  );
}
