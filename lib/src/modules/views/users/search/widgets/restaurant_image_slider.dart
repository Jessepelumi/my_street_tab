import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/users/controller/home_controller.dart';
import 'package:my_street_tab/src/modules/views/users/search/widgets/restaurant_image.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class RestaurantImageSlider extends StatelessWidget {
  const RestaurantImageSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeBannerController());

    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          items: banners.map((src) => RestaurantImage(src: src)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            height: 320,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),

        // dot indicator
        Positioned(
          bottom: smallMedium,
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  Container(
                    width: controller.carouselCurrentIndex.value == i
                        ? smallMedium / 1.3
                        : small,
                    height: controller.carouselCurrentIndex.value == i
                        ? smallMedium / 1.3
                        : small,
                    margin: const EdgeInsets.only(right: small / 1.3),
                    decoration: BoxDecoration(
                      color: controller.carouselCurrentIndex.value == i
                          ? primary
                          : primary.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(extraLarge),
                    ),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
