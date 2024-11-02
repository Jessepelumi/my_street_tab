import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/modules/views/shared/custom_appbar.dart';
import 'package:my_street_tab/src/modules/views/users/cart/checkout.dart';
import 'package:my_street_tab/src/modules/views/users/cart/widgets/cart_container.dart';
import 'package:my_street_tab/src/modules/views/users/cart/widgets/payment_summary.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "My Cart",
        hasAction: true,
        action: () {},
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: extraLarge,
            vertical: medium,
          ),
          child: Column(
            children: [
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CartContainer(item: "Burger with meat", price: "24.00"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: small),
              const PaymentSummary(),
              const SizedBox(height: medium),
              SizedBox(
                width: double.infinity,
                child: ClientElevatedButton(
                  buttonText: "Complete Order",
                  buttonAction: () => Get.to(() => Checkout()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
