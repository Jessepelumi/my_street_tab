import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/modules/views/controllers/draggable_sheet_controller.dart';
import 'package:my_street_tab/src/modules/views/users/search/widgets/keywords_container.dart';
import 'package:my_street_tab/src/modules/views/users/search/widgets/search_section_title.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DraggableSheetController());

    return Scaffold(
      body: Stack(
        children: [
          // Map container
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const Center(
              child: Text("Google Map Here"),
            ),
          ),

          // Back button
          Positioned(
            top: extraLarge * 2,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: medium),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(extraLarge),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(width: smallMedium),

                  // search container
                  Expanded(
                    child: Container(
                      //padding: EdgeInsets.all(0),
                      height: 40,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(medium),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: medium),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          label: Text(
                            "Search keywords",
                            style: GoogleFonts.sen(
                              color: darkText.withOpacity(0.5),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(small),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(small),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: smallMedium),

                  // search icon
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(extraLarge),
                      ),
                      child: const Icon(
                        Icons.search_rounded,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Draggable Sheet
          DraggableScrollableSheet(
            initialChildSize: 0.18,
            minChildSize: 0.14,
            maxChildSize: 0.8,
            expand: true,
            snap: true,
            snapSizes: const [0.5],
            controller: controller.draggableController,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                padding: const EdgeInsets.only(
                  bottom: small,
                  left: small,
                  right: small,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(medium),
                ),
                child: Column(
                  children: [
                    // drag toggle
                    GestureDetector(
                      onVerticalDragUpdate: (details) {
                        controller.adjustDraggableSheet(
                          details.primaryDelta!,
                          MediaQuery.of(context).size.height,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: small),
                        child: Container(
                          height: extraSmall * 1.4,
                          width: extraLarge * 2,
                          decoration: BoxDecoration(
                            color: primary.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(extraLarge),
                          ),
                        ),
                      ),
                    ),

                    // details
                    Expanded(
                      child: CustomScrollView(
                        controller: scrollController,
                        slivers: const [
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: EdgeInsets.all(medium),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // keywords
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SearchSectionTitle(
                                        title: "Recent Keywords",
                                      ),
                                      SizedBox(height: small),
                                      KeywordsContainer(
                                        color: Colors.transparent,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: medium),

                                  // suggested restaurants
                                  SearchSectionTitle(
                                    title: "Suggested Restaurants",
                                  ),
                                  SizedBox(height: small),
                                  SugestedRestaurant(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SugestedRestaurant extends StatelessWidget {
  const SugestedRestaurant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: medium,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: darkText.withOpacity(0.2),
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: primary.withOpacity(0.5),
              borderRadius: BorderRadius.circular(small),
            ),
          ),
          const SizedBox(width: small),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Spicy Restaurant",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: red.withOpacity(0.7),
                    ),
                    const SizedBox(width: extraSmall),
                    Text(
                      "4.7",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
