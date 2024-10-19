import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/users/home/cart.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      //clipper: CustomCurveClipper(),
      child: Container(
        padding: const EdgeInsets.all(large),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [primary, primaryTwo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: extraSmall,
                        vertical: extraSmall / 2,
                      ),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(smallLarge),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: TextFormField(
                              cursorColor: darkText.withOpacity(0.7),
                              cursorHeight: medium,
                              decoration: const InputDecoration(
                                hintText: "Search",
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: small, vertical: extraSmall),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: darkText,
                              borderRadius: BorderRadius.circular(smallMedium),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(extraSmall),
                              child: SvgPicture.asset(
                                IconStrings.filterOutlined,
                                colorFilter: const ColorFilter.mode(
                                  white,
                                  BlendMode.srcIn,
                                ),
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: small),
                  GestureDetector(
                    onTap: () => Get.to(() => const Cart()),
                    child: Container(
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(small),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(extraSmall),
                        child: SvgPicture.asset(
                          IconStrings.cartOutlined,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: smallMedium),

              // greeting
              Text(
                "Good Morning",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: white,
                      fontWeight: FontWeight.w900,
                    ),
              ),
              Text(
                "Rice and Shine! It's Breakfast Time",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
