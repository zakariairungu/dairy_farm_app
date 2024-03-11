import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FTextTheme {
  FTextTheme._();
  static TextTheme lightTheme = TextTheme(
    headlineMedium: GoogleFonts.roboto(
           fontWeight: FontWeight.bold, color: blackColor,
    ),
    titleLarge: GoogleFonts.roboto(color: blackColor),
  );
  static TextTheme darkTheme = TextTheme();
}
