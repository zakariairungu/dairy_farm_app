import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:dairy_farm_app/src/utils/theme.dart/theme_widget/elevated_button_theme.dart';
import 'package:dairy_farm_app/src/utils/theme.dart/theme_widget/input_decoration_data_theme.dart';
import 'package:dairy_farm_app/src/utils/theme.dart/theme_widget/text_theme.dart';
import 'package:flutter/material.dart';

class FTheme {
  FTheme._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: FTextTheme.lightTheme,
    elevatedButtonTheme: FElevatedButtonTheme.lightTheme,
    inputDecorationTheme: FInputDecorationDataTheme.lightTheme,
    textSelectionTheme: TextSelectionThemeData(
    cursorColor: blackColor, 
  ),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: FTextTheme.darkTheme,
    elevatedButtonTheme: FElevatedButtonTheme.darkTheme,
    inputDecorationTheme: FInputDecorationDataTheme.darkTheme,
    textSelectionTheme: TextSelectionThemeData(
    cursorColor: primaryColor,
  ),
  );
}
