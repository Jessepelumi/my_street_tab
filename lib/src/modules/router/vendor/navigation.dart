import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/router/vendor/navigation_controller.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => Container(
          height: 90,
          padding: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => controller.selectedIndex.value = 0,
                child: SvgPicture.asset(
                  IconStrings.dashboard,
                  colorFilter: controller.selectedIndex.value == 0
                      ? ColorFilter.mode(
                          red.withOpacity(0.7),
                          BlendMode.srcIn,
                        )
                      : ColorFilter.mode(
                          darkText.withOpacity(0.5),
                          BlendMode.srcIn,
                        ),
                  width: 26,
                  height: 26,
                ),
              ),
              GestureDetector(
                onTap: () => controller.selectedIndex.value = 1,
                child: SvgPicture.asset(
                  IconStrings.hamburgerMenu,
                  colorFilter: controller.selectedIndex.value == 1
                      ? ColorFilter.mode(
                          red.withOpacity(0.7),
                          BlendMode.srcIn,
                        )
                      : ColorFilter.mode(
                          darkText.withOpacity(0.5),
                          BlendMode.srcIn,
                        ),
                  width: 26,
                  height: 26,
                ),
              ),
              GestureDetector(
                onTap: () => controller.selectedIndex.value = 2,
                child: Container(
                  padding: const EdgeInsets.all(small * 1.5),
                  decoration: BoxDecoration(
                    color: red.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(extraLarge),
                    border: Border.all(color: red.withOpacity(0.7)),
                  ),
                  child: SvgPicture.asset(
                    IconStrings.plus,
                    width: 26,
                    height: 26,
                    colorFilter: const ColorFilter.mode(
                      red,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => controller.selectedIndex.value = 3,
                child: SvgPicture.asset(
                  IconStrings.notificationBell,
                  colorFilter: controller.selectedIndex.value == 3
                      ? ColorFilter.mode(
                          red.withOpacity(0.7),
                          BlendMode.srcIn,
                        )
                      : ColorFilter.mode(
                          darkText.withOpacity(0.5),
                          BlendMode.srcIn,
                        ),
                  width: 26,
                  height: 26,
                ),
              ),
              GestureDetector(
                onTap: () => controller.selectedIndex.value = 4,
                child: SvgPicture.asset(
                  IconStrings.profile,
                  colorFilter: controller.selectedIndex.value == 4
                      ? ColorFilter.mode(
                          red.withOpacity(0.7),
                          BlendMode.srcIn,
                        )
                      : ColorFilter.mode(
                          darkText.withOpacity(0.5),
                          BlendMode.srcIn,
                        ),
                  width: 26,
                  height: 26,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
