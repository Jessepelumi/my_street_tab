import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/controllers/cart_controllers.dart';
import 'package:my_street_tab/src/modules/views/users/cart/widgets/quantity_button.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class CartContainer extends StatelessWidget {
  const CartContainer({
    super.key,
    required this.item,
    required this.price,
  });

  final String item, price;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartControllers());

    return Container(
      padding: const EdgeInsets.only(
        top: medium,
        bottom: medium,
        right: medium,
      ),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(medium),
      ),
      child: Row(
        children: [
          Obx(
            () => Checkbox(
              activeColor: red.withOpacity(0.8),
              value: controller.isChecked.value,
              onChanged: (value) {
                controller.toggleCheckbox();
              },
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: primary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(smallMedium),
            ),
          ),
          const SizedBox(width: medium),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: darkText,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const SizedBox(height: extraSmall),
                    Text(
                      "\$$price",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: red,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: extraSmall),
                const QuantityButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
