import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/auth/controllers/onboarding_controller.dart';
import 'package:my_street_tab/src/auth/views/login/login.dart';
import 'package:my_street_tab/src/auth/views/onboarding/onboarding_view.dart';
import 'package:my_street_tab/src/auth/views/onboarding/widgets/dot_navigation.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/utils/constants/image_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(large),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: const [
                  OnboardingView(
                    asset: ImageStrings.favorite,
                    title: "All your Favorites",
                    subTitle:
                        "Get all your loved foods in one place, you just place the order we do the rest",
                  ),
                  OnboardingView(
                    asset: ImageStrings.order,
                    title: "Order from Chosen Chef",
                    subTitle:
                        "All the best restaurants with their top menu waiting for you, the can't wait for your order!",
                  ),
                  OnboardingView(
                    asset: ImageStrings.delivery,
                    title: "Free Delivery Offers",
                    subTitle:
                        "Get all your loved foods in one place, you just place the order we do the rest",
                  ),
                ],
              ),
            ),

            // second half
            Flexible(
              child: Column(
                children: [
                  // dot navigation
                  const DotNavigation(),
                  const SizedBox(height: large * 2),

                  // elevated button
                  Obx(
                    () => ClientElevatedButton(
                      buttonText: controller.currentPageIndex.value == 2
                          ? "GET STARTED"
                          : "NEXT",
                      buttonAction: controller.currentPageIndex.value == 2
                          ? () => Get.to(() => const Login())
                          : controller.nextPage,
                    ),
                  ),

                  // text button
                  Obx(
                    () => controller.currentPageIndex.value == 2
                        ? const SizedBox.shrink()
                        : TextButton(
                            onPressed: controller.skipPage,
                            child: const Text("Skip"),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
