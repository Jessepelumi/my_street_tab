import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/controllers/cart_controllers.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartControllers());

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: controller.decrementQuantity,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: darkText.withOpacity(0.2),
                  ),
                  borderRadius: BorderRadius.circular(extraLarge),
                ),
                child: const Icon(Icons.remove),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: small),
              child: Obx(
                () => Text(
                  "${controller.quantity.value}",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            GestureDetector(
              onTap: controller.incrementQuantity,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: darkText.withOpacity(0.2),
                  ),
                  borderRadius: BorderRadius.circular(extraLarge),
                ),
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.delete,
            color: delete,
            size: 20,
          ),
        ),
      ],
    );
  }
}
