import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/modules/views/shared/custom_appbar.dart';
import 'package:my_street_tab/src/modules/views/users/cart/widgets/checkout_method.dart';
import 'package:my_street_tab/src/modules/views/users/controller/checkout_controller.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Checkout extends StatelessWidget {
  Checkout({super.key});

  final CheckoutController controller = Get.put(CheckoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Checkout"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: extraLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // payment
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: smallLarge),
                        child: Text(
                          "Payment method",
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: darkText,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(medium),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(smallLarge),
                        ),
                        child: Column(
                          children: [
                            Obx(
                              () => CheckoutMethod(
                                title: "Card",
                                value: 1,
                                containerColor: primary,
                                groupValue:
                                    controller.selectedPaymentMethod.value,
                                changeAction: (value) {
                                  controller.updatePaymentMethod(value!);
                                },
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: small),
                              child: Divider(indent: 50),
                            ),
                            Obx(
                              () => CheckoutMethod(
                                title: "Bank",
                                value: 2,
                                containerColor: red,
                                groupValue:
                                    controller.selectedPaymentMethod.value,
                                changeAction: (value) {
                                  controller.updatePaymentMethod(value!);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: smallLarge),

                      // delivery
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: smallLarge),
                        child: Text(
                          "Delivery method",
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: darkText,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(medium),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(smallLarge),
                        ),
                        child: Column(
                          children: [
                            Obx(
                              () => CheckoutMethod(
                                title: "Door delivery",
                                value: 1,
                                isPayment: false,
                                groupValue:
                                    controller.selectedDeliveryMethod.value,
                                changeAction: (value) {
                                  controller.updateDeliveryMethod(value!);
                                },
                              ),
                            ),
                            const Divider(indent: 50),
                            Obx(
                              () => CheckoutMethod(
                                title: "Pick up",
                                value: 2,
                                isPayment: false,
                                groupValue:
                                    controller.selectedDeliveryMethod.value,
                                changeAction: (value) {
                                  controller.updateDeliveryMethod(value!);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: extraLarge),

                      // delivery
                      Obx(() {
                        if (controller.selectedDeliveryMethod.value == 1) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery Fee",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(color: darkText),
                              ),
                              Text(
                                "\$30.10",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: darkText),
                              ),
                            ],
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      }),
                      const SizedBox(height: small),

                      // bill
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: darkText,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          Text(
                            "\$62.50",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: darkText,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ClientElevatedButton(
                  buttonText: "Proceed to Payment",
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
