import 'package:flutter/material.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/modules/views/shared/custom_appbar.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
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
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: primary.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(smallLarge),
                        ),
                      ),
                      const SizedBox(height: large),
                      Text(
                        "Congratulations!",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: darkText,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(
                          height: small), // Add some spacing between texts
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          "You've successfully made a payment, enjoy our service!",
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
                  buttonAction: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
