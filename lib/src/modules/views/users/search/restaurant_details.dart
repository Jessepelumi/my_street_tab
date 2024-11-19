import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/modules/views/users/search/search_details.dart';
import 'package:my_street_tab/src/modules/views/users/search/widgets/food_container.dart';
import 'package:my_street_tab/src/modules/views/users/search/widgets/keywords_container.dart';
import 'package:my_street_tab/src/modules/views/users/search/widgets/restaurant_image_slider.dart';
import 'package:my_street_tab/src/modules/views/users/search/widgets/search_section_title.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class RestaurantDetails extends StatelessWidget {
  const RestaurantDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // content
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RestaurantImageSlider(
                  banners: [
                    "",
                    "",
                    "",
                    "",
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(large),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Spicy Restaurant",
                        style: GoogleFonts.sen(
                          color: darkText,
                          fontSize:
                              Theme.of(context).textTheme.titleLarge?.fontSize,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: small),
                      const VendorServiceSummary(),
                      const SizedBox(height: medium),

                      // description
                      Text(
                        "Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: GoogleFonts.sen(
                          color: primary.withOpacity(0.7),
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium?.fontSize,
                        ),
                      ),
                      const SizedBox(height: medium),

                      // options
                      const KeywordsContainer(color: Colors.transparent),
                      const SizedBox(height: medium),

                      // ingredients
                      const SearchSectionTitle(title: "Burger (10)"),
                      const SizedBox(height: medium),
                      const FoodContainer(),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // back and more buttons
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: extraLarge * 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: large),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // back
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      padding: const EdgeInsets.all(small * 1.5),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(extraLarge),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 18,
                      ),
                    ),
                  ),

                  // more button
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(small * 1.5),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(extraLarge),
                      ),
                      child: const Icon(
                        Icons.more_horiz,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
