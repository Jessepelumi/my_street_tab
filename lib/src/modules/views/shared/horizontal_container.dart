import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/users/search/food_details.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class HorizontalContainer extends StatelessWidget {
  const HorizontalContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const FoodDetails()),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(medium),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(medium),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: 110,
                decoration: BoxDecoration(
                  color: primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(medium),
                ),
              ),
            ),
            const SizedBox(width: small),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cookie Sandwich",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: darkText,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  Text(
                    "Shortbread, chocolate turtle cookies, and red velvet.",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: primary.withOpacity(0.5),
                        ),
                  ),
                  Text(
                    "\$19.05",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: red,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
