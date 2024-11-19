import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme get textTheme => GoogleFonts.senTextTheme().apply(
        bodyColor: darkText,
        displayColor: darkText,
      );
}
