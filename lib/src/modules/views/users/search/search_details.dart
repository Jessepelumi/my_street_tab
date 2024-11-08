import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/modules/views/users/search/restaurant_details.dart';
import 'package:my_street_tab/src/modules/views/users/search/widgets/food_container.dart';
import 'package:my_street_tab/src/modules/views/users/search/widgets/search_section_title.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class SearchDetails extends StatelessWidget {
  const SearchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(large),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 21,
                          ),
                        ),
                        const SizedBox(width: large),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: medium,
                            vertical: extraSmall,
                          ),
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(large),
                          ),
                          child: Text(
                            "BURGER",
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.sen(
                              color: white,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.fontSize,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(small * 1.2),
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(extraLarge),
                      ),
                      child: const Icon(
                        Icons.search_rounded,
                        size: 14,
                        color: white,
                      ),
                    ),
                  ),
                  const SizedBox(width: small),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(small * 1.2),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(extraLarge),
                      ),
                      child: const Icon(
                        Icons.keyboard_option_key_rounded,
                        size: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // scrollable content
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: large,
                  vertical: small,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SearchSectionTitle(title: "Popular Burgers"),
                    const SizedBox(height: medium),

                    // food container
                    const FoodContainer(),
                    const SizedBox(height: medium),

                    // open restaurants
                    const SearchSectionTitle(title: "Open Restaurants"),
                    const SizedBox(height: medium),

                    // container
                    GestureDetector(
                      onTap: () => Get.to(() => const RestaurantDetails()),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                color: primary.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(medium),
                              ),
                            ),
                            const SizedBox(height: small),
                            Text(
                              "Tasty Treat Gallery",
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.sen(
                                color: darkText,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.fontSize,
                              ),
                            ),
                            const SizedBox(height: extraSmall),
                            const VendorServiceSummary(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VendorServiceSummary extends StatelessWidget {
  const VendorServiceSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.star_border,
                color: red.withOpacity(0.7),
              ),
              const SizedBox(width: small),
              Text(
                "4.7",
                style: GoogleFonts.sen(),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.delivery_dining,
                color: red.withOpacity(0.7),
              ),
              const SizedBox(width: small),
              Text(
                "Free",
                style: GoogleFonts.sen(),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.access_time_rounded,
                color: red.withOpacity(0.7),
              ),
              const SizedBox(width: small),
              Text(
                "20 min",
                style: GoogleFonts.sen(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
