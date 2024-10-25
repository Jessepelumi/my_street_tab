import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final appElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primary,
      foregroundColor: Colors.white,
      fixedSize: const Size(double.infinity, 65),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(smallMedium),
      ),
      textStyle: GoogleFonts.leagueSpartan(
        fontWeight: FontWeight.w600,
        fontSize: medium,
      ),
    ),
  );
}
