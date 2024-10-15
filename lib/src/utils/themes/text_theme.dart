import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';

class AppTextTheme {
  AppTextTheme._();

  // light text theme
  static TextTheme lightTextTheme = TextTheme(
    // title texts
    titleSmall: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w400,
      color: darkText,
    ),
    titleMedium: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w600,
      color: darkText,
    ),
    titleLarge: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w700,
      color: darkText,
    ),

    // body texts
    bodySmall: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w300,
      color: darkText,
    ),
    bodyMedium: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w400,
      color: darkText,
    ),
    bodyLarge: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w500,
      color: darkText,
    ),

    // label texts
    labelSmall: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w400,
      color: darkText,
    ),
    labelMedium: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w500,
      color: darkText,
    ),
    labelLarge: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w600,
      color: darkText,
    ),
  );

  // dark text theme
  static TextTheme darkTextTheme = TextTheme(
    // title texts
    titleSmall: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w400,
      color: white,
    ),
    titleMedium: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w600,
      color: white,
    ),
    titleLarge: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w700,
      color: white,
    ),

    // body texts
    bodySmall: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w300,
      color: white,
    ),
    bodyMedium: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w400,
      color: white,
    ),
    bodyLarge: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w500,
      color: white,
    ),

    // label texts
    labelSmall: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w400,
      color: white,
    ),
    labelMedium: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w500,
      color: white,
    ),
    labelLarge: GoogleFonts.leagueSpartan(
      fontWeight: FontWeight.w600,
      color: white,
    ),
  );
}
