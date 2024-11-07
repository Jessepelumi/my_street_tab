import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class FoodContainer extends StatelessWidget {
  const FoodContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(small),
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(large),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            decoration: BoxDecoration(
              color: primary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(medium),
            ),
          ),
          const SizedBox(height: smallMedium),
          Text(
            "Burger Bistro",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: GoogleFonts.sen(
              color: darkText,
              fontWeight: FontWeight.w700,
              fontSize: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.fontSize,
            ),
          ),
          Text(
            "Rose Garden",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: GoogleFonts.sen(
              color: darkText.withOpacity(0.55),
              fontWeight: FontWeight.w500,
              fontSize: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.fontSize,
            ),
          ),
          const SizedBox(height: small),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$40",
                style: GoogleFonts.sen(
                  color: primary,
                  fontWeight: FontWeight.w600,
                  fontSize: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.fontSize,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(extraSmall),
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius:
                        BorderRadius.circular(extraLarge),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}