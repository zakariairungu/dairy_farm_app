import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class FInputDecorationDataTheme {
  static InputDecorationTheme lightTheme = InputDecorationTheme(
      hintStyle: TextStyle(color: blackColor),
      labelStyle: TextStyle(color: blackColor),
      suffixIconColor: blackColor,
      prefixIconColor: blackColor,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: blackColor,
        ),
      ),
      border: const OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: blackColor,
          width: 2,
        ),
      ));
  static InputDecorationTheme darkTheme = InputDecorationTheme(
      hintStyle: TextStyle(color: primaryColor),
      labelStyle: TextStyle(color: primaryColor),
      prefixIconColor: primaryColor,
      suffixIconColor: primaryColor,
      border: const OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: primaryColor,
          width: 2,
        ),
      ));
}
