import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class FElevatedButtonTheme {
  static ElevatedButtonThemeData lightTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: blackColor,
      foregroundColor: whiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      side: const BorderSide(width: 2)

    )
  );
  static ElevatedButtonThemeData darkTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: blackColor,
      foregroundColor: whiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      side: const BorderSide(width: 2),
      )
  );
  
}
