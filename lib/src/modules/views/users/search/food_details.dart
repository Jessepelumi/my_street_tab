import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/modules/views/users/search/search_details.dart';
import 'package:my_street_tab/src/modules/views/users/search/widgets/search_section_title.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

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
                Container(
                  height: 320,
                  decoration: BoxDecoration(
                    color: primary.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(large),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(large),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Burger Bistro",
                        style: GoogleFonts.sen(
                          color: darkText,
                          fontSize:
                              Theme.of(context).textTheme.titleLarge?.fontSize,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Rose Garden",
                        style: GoogleFonts.sen(
                          color: darkText,
                          fontSize:
                              Theme.of(context).textTheme.labelLarge?.fontSize,
                          fontWeight: FontWeight.w400,
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

                      // size
                      Row(
                        children: [
                          Text(
                            "SIZE:",
                            style: GoogleFonts.sen(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.fontSize,
                            ),
                          ),
                          const SizedBox(width: small),
                          Container(
                            padding: const EdgeInsets.all(small),
                            decoration: BoxDecoration(
                              color: primary.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(extraLarge),
                            ),
                            child: Text(
                              "14\"",
                              style: GoogleFonts.sen(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.fontSize,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: medium),

                      // ingredients
                      const SearchSectionTitle(title: "INGREDIENTS"),
                      const SizedBox(height: medium),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: primary.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(extraLarge),
                            ),
                          ),
                          const SizedBox(height: extraSmall),
                          Text(
                            "Onions",
                            style: GoogleFonts.sen(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // back and favourite buttons
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

                  // favourite button
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(small * 1.5),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(extraLarge),
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 18,
                        color: red.withOpacity(0.8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: extraLarge,
          vertical: large,
        ),
        decoration: BoxDecoration(
            color: primary.withOpacity(0.15),
            borderRadius: BorderRadius.circular(medium)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$32",
                  style: GoogleFonts.sen(
                    color: primary,
                    fontWeight: FontWeight.bold,
                    fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(small * 1.2),
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(large),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(extraSmall),
                        decoration: BoxDecoration(
                          color: white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(extraLarge),
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: small),
                        child: Text(
                          "2",
                          style: GoogleFonts.sen(
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.fontSize,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(extraSmall),
                        decoration: BoxDecoration(
                          color: white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(extraLarge),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: medium),
            ClientElevatedButton(
              buttonText: "ADD TO CART",
              buttonAction: () {},
            ),
          ],
        ),
      ),
    );
  }
}
