import 'package:flutter/material.dart';
import 'package:my_street_tab/src/modules/views/shared/horizontal_container.dart';
import 'package:my_street_tab/src/modules/views/shared/vertical_container.dart';
import 'package:my_street_tab/src/modules/views/shared/section_header.dart';
import 'package:my_street_tab/src/modules/views/users/home/widgets/banner_slider.dart';
import 'package:my_street_tab/src/modules/views/users/home/widgets/bestseller_container.dart';
import 'package:my_street_tab/src/modules/views/users/home/widgets/home_categories.dart';
import 'package:my_street_tab/src/modules/views/users/home/widgets/home_header.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // home header
            const HomeHeader(),

            // categories & bestseller
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: large,
                vertical: medium,
              ),
              child: Column(
                children: [
                  const HomeCategories(),
                  const SizedBox(height: small),
                  const Divider(),
                  SectionHeader(
                    title: "Best Seller",
                    actionText: "View All",
                    action: () {},
                  ),
                  const SizedBox(height: small),

                  // bestseller container
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BestsellerContainer(src: "", price: "70.0"),
                      BestsellerContainer(src: "", price: "50.0"),
                      BestsellerContainer(src: "", price: "123.4"),
                      BestsellerContainer(src: "", price: "56.8"),
                    ],
                  ),
                  const SizedBox(height: smallLarge),

                  // banner carousel
                  const BannerSlider(
                    banners: [
                      "",
                      "",
                      "",
                      "",
                      "",
                    ],
                  ),
                ],
              ),
            ),

            // final
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: medium,
                vertical: small,
              ),
              child: Column(
                children: [
                  // recommended header
                  SectionHeader(
                    title: "Recommended",
                    isAction: false,
                  ),
                  SizedBox(height: small),

                  // recommended container
                  VerticalContainer(),
                  SizedBox(height: smallLarge),
                  //List.generate()

                  // most popular header
                  SectionHeader(
                    title: "Most Popular",
                    isAction: false,
                  ),
                  SizedBox(height: small),

                  // most popular container
                  HorizontalContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
