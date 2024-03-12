import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class FBottomNavigationBarTheme {
  static BottomNavigationBarThemeData lightTheme = BottomNavigationBarThemeData(
    selectedItemColor: blackColor,
    unselectedItemColor: greyColor,
    backgroundColor: Colors.transparent,
    type: BottomNavigationBarType.fixed,
    elevation: 0
  );

  static BottomNavigationBarThemeData darkTheme = BottomNavigationBarThemeData(
    selectedItemColor: primaryColor,
    unselectedItemColor: const Color.fromARGB(255, 214, 194, 11), 
    backgroundColor: Colors.transparent,
    elevation: 0
  );
}
