import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/router/user/navigation_controller.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => Container(
          height: 80,
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
                  controller.selectedIndex.value == 0
                      ? IconStrings.homeFilled
                      : IconStrings.homeOutlined,
                  width: 26,
                  height: 26,
                ),
              ),
              GestureDetector(
                onTap: () => controller.selectedIndex.value = 1,
                child: SvgPicture.asset(
                  controller.selectedIndex.value == 1
                      ? IconStrings.locationFilled
                      : IconStrings.locationOutlined,
                  width: 26,
                  height: 26,
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  GestureDetector(
                    onTap: () => controller.selectedIndex.value = 2,
                    child: SvgPicture.asset(
                      controller.selectedIndex.value == 2
                          ? IconStrings.chatFilled
                          : IconStrings.chatOutlined,
                      width: 26,
                      height: 26,
                    ),
                  ),

                  // message indicator
                  Positioned(
                    right: -5,
                    child: Container(
                      //height: 10,
                      //width: 10,
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => controller.selectedIndex.value = 3,
                child: SvgPicture.asset(
                  controller.selectedIndex.value == 3
                      ? IconStrings.notificationFilled
                      : IconStrings.notificationOutlined,
                  width: 26,
                  height: 26,
                ),
              ),
              GestureDetector(
                onTap: () => controller.selectedIndex.value = 4,
                child: SvgPicture.asset(
                  controller.selectedIndex.value == 4
                      ? IconStrings.userFilled
                      : IconStrings.userOutlined,
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
