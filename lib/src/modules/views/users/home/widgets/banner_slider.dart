import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/users/controller/home_controller.dart';
import 'package:my_street_tab/src/modules/views/users/home/widgets/home_banner.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeBannerController());

    return Column(
      children: [
        CarouselSlider(
          items: banners.map((src) => HomeBanner(src: src)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            height: 130,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(height: small),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  Container(
                    width: 20,
                    height: extraSmall,
                    margin: const EdgeInsets.only(right: extraSmall),
                    decoration: BoxDecoration(
                      color: controller.carouselCurrentIndex.value == i
                          ? primary
                          : primary.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(medium),
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
