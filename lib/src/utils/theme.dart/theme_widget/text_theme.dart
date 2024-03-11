import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FTextTheme {
  FTextTheme._();
  static TextTheme lightTheme = TextTheme(
    headlineLarge: GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      color: blackColor,
    ),
    headlineSmall: GoogleFonts.roboto(
      fontWeight: FontWeight.bold,
      color: blackColor,
    ),
    titleLarge: GoogleFonts.roboto(
      color: blackColor,
    ),
    titleSmall: GoogleFonts.roboto(
      fontWeight: FontWeight.bold,
      color: blackColor,
    ),
  );
  static TextTheme darkTheme = TextTheme(
    headlineLarge: GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      color: whiteColor,
    ),
    headlineSmall: GoogleFonts.roboto(
      fontWeight: FontWeight.bold,
      color: whiteColor,
    ),
    titleLarge: GoogleFonts.roboto(
      color: whiteColor,
    ),
    titleSmall: GoogleFonts.roboto(
      fontWeight: FontWeight.bold,
      color: whiteColor,
      
    ),
  );
}
