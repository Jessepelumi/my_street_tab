import 'package:flutter/material.dart';
import 'package:my_street_tab/src/auth/controllers/onboarding_controller.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotNavigation extends StatelessWidget {
  const DotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return SmoothPageIndicator(
      controller: controller.pageController,
      count: 3,
      effect: const ScrollingDotsEffect(
        activeDotColor: primary,
        dotHeight: 8,
        dotWidth: 8,
      ),
    );
  }
}
