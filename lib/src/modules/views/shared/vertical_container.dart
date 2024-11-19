import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/users/search/food_details.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class VerticalContainer extends StatelessWidget {
  const VerticalContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const FoodDetails()),
      child: Container(
        padding: const EdgeInsets.all(medium),
        width: MediaQuery.of(context).size.width * 0.52,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(large),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    color: primary.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(medium),
                  ),
                ),
                const SizedBox(height: smallMedium),
                Text(
                  "Healthy Taco Salad with fresh vegetable",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: darkText,
                        fontWeight: FontWeight.w800,
                      ),
                ),
                const SizedBox(height: small),
                Row(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          IconStrings.fireOutlined,
                          width: medium,
                          colorFilter: ColorFilter.mode(
                            primary.withOpacity(0.5),
                            BlendMode.srcIn,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Text(
                            "12 Kcal",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                  color: primary.withOpacity(0.5),
                                ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: extraSmall,
                      ),
                      child: Icon(
                        Icons.stop,
                        color: primary.withOpacity(0.5),
                        size: small,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          IconStrings.clockOutlined,
                          width: medium,
                          colorFilter: ColorFilter.mode(
                            primary.withOpacity(0.5),
                            BlendMode.srcIn,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Text(
                            "25 mins",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                  color: primary.withOpacity(0.5),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            // favourite button
            Positioned(
              top: 10,
              right: 10,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(small / 1.5),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(small),
                  ),
                  child: SvgPicture.asset(IconStrings.heartOutlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
