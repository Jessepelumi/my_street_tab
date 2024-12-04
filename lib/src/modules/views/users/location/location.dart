import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/users/cart/cart.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: extraSmall,
                        vertical: extraSmall,
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
                  const SizedBox(width: extraSmall),

                  // search icon
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(small),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(extraLarge),
                      ),
                      child: SvgPicture.asset(
                        IconStrings.search,
                      ),
                    ),
                  ),
                  const SizedBox(width: extraSmall),

                  // cart button
                  GestureDetector(
                    onTap: () => Get.to(() => const Cart()),
                    child: Container(
                      padding: const EdgeInsets.all(small),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(extraLarge),
                      ),
                      child: SvgPicture.asset(
                        IconStrings.cartOutlined,
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
