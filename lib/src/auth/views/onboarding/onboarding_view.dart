import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    super.key,
    required this.asset,
    required this.title,
    required this.subTitle,
  });

  final String asset, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Image.asset(
            asset,
            alignment: Alignment.bottomCenter,
          ),
        ),
        const SizedBox(height: large),
        Text(
          title,
          style: GoogleFonts.sen(
            fontWeight: FontWeight.w800,
            fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(small),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.sen(
              fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
              color: darkText.withOpacity(0.7),
            ),
          ),
        ),
      ],
    );
  }
}
