import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/modules/views/shared/custom_appbar.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Notifications",
        isPageHeader: true,
        hasAction: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(medium),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(medium),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(medium),
                ),
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      IconStrings.food,
                      width: 30,
                    ),
                    const SizedBox(width: smallMedium),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order Arrived!",
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.sen(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.fontSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Your order from Rose Garden has arrived. Enjoy you meal!",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.sen(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.fontSize,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
