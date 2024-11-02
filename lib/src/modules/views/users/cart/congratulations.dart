import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/modules/views/shared/custom_appbar.dart';
import 'package:my_street_tab/src/modules/views/users/cart/track_order.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Checkout"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(extraLarge),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Center the children vertically
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Center the children horizontally
                    mainAxisSize: MainAxisSize
                        .min, // Ensure the Column takes minimal space
                    children: [
                      SvgPicture.asset(IconStrings.check),
                      const SizedBox(height: large),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          "Order Completed Successfully!",
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: primary.withOpacity(0.5),
                                  ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          "Thank you and see you soon",
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: primary.withOpacity(0.5),
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ClientElevatedButton(
                  buttonText: "Track Order",
                  buttonAction: () => Get.to(() => const TrackOrder()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
