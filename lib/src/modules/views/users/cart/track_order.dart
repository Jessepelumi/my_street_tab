import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/modules/views/controllers/draggable_sheet_controller.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

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
            left: medium,
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back_ios_new_rounded),
                  Text(
                    "Track Order",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ],
              ),
            ),
          ),

          // Draggable Sheet
          DraggableScrollableSheet(
            initialChildSize: 0.175,
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
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SingleChildScrollView(
                              controller: scrollController,
                              child: Column(
                                children: [
                                  // top section
                                  Padding(
                                    padding: const EdgeInsets.all(medium),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            color: primary.withOpacity(0.3),
                                            borderRadius:
                                                BorderRadius.circular(small),
                                          ),
                                        ),
                                        const SizedBox(width: smallMedium),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Uttora Coffee House",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            Text(
                                              "Ordered At 06 Sept, 10:00pm",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge
                                                  ?.copyWith(
                                                    color: darkText
                                                        .withOpacity(0.5),
                                                  ),
                                            ),
                                            const SizedBox(height: small),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "2x",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelMedium,
                                                  ),
                                                  TextSpan(
                                                    text: " Burger",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelMedium
                                                        ?.copyWith(
                                                          color: primary
                                                              .withOpacity(0.7),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "4x",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelMedium,
                                                  ),
                                                  TextSpan(
                                                    text: " Sandwich",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelMedium
                                                        ?.copyWith(
                                                          color: primary
                                                              .withOpacity(0.7),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  // estimated time section
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: medium,
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          "20 min",
                                          style: GoogleFonts.sen(
                                            color: darkText,
                                            fontWeight: FontWeight.w900,
                                            fontSize: large,
                                          ),
                                        ),
                                        Text(
                                          "ESTIMATED DELIVERY TIME",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.sen(
                                            color: darkText.withOpacity(0.5),
                                            fontSize: smallMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // delivery agent
                            //const CourierAgent(),
                          ],
                        ),
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

class CourierAgent extends StatelessWidget {
  const CourierAgent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(large),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(medium),
        border: Border(
          top: BorderSide(
            color: darkText.withOpacity(0.2),
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: primary.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(extraLarge),
                  ),
                ),
                const SizedBox(width: smallMedium),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Robert F.",
                      style: GoogleFonts.sen(
                        color: darkText,
                        fontWeight: FontWeight.w700,
                        fontSize:
                            Theme.of(context).textTheme.titleLarge?.fontSize,
                      ),
                    ),
                    Text(
                      "Courier",
                      style: GoogleFonts.sen(
                        color: darkText.withOpacity(0.75),
                        fontSize:
                            Theme.of(context).textTheme.labelLarge?.fontSize,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // courier chat
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(smallMedium),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: primary),
                borderRadius: BorderRadius.circular(extraLarge),
                color: white,
              ),
              child: SvgPicture.asset(IconStrings.courierChat),
            ),
          ),
        ],
      ),
    );
  }
}
