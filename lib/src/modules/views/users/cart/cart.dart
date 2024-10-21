import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/modules/views/shared/custom_appbar.dart';
import 'package:my_street_tab/src/modules/views/users/cart/checkout.dart';
import 'package:my_street_tab/src/modules/views/users/cart/widgets/cart_container.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Cart"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(extraLarge),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(IconStrings.swipe),
                          const SizedBox(width: small),
                          Text(
                            "swipe on an item to delete",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: darkText,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(height: large),
                      const CartContainer(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ClientElevatedButton(
                  buttonText: "Complete Order",
                  buttonAction: () => Get.to(() => const Checkout()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
