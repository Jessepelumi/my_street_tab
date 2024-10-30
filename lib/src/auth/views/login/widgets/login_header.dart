import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.title,
    required this.subtitle,
    this.hasPrevious = false,
  });

  final String title, subtitle;
  final bool hasPrevious;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      //clipper: CustomCurveClipper(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          horizontal: large,
          vertical: smallMedium,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [primary, primaryTwo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (hasPrevious == true)
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(extraLarge),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: darkText,
                      size: 18,
                    ),
                  ),
                ),
              const SizedBox(height: medium),
              Center(
                child: Column(
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.sen(
                        color: white,
                        fontSize:
                            Theme.of(context).textTheme.headlineSmall?.fontSize,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      subtitle,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.sen(
                        color: white,
                      ),
                    ),
                  ],
                ),
              ),
              // greeting
            ],
          ),
        ),
      ),
    );
  }
}
