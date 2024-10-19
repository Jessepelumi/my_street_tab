import 'package:flutter/material.dart';
import 'package:my_street_tab/src/modules/views/users/cart/widgets/quantity_button.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class CartContainer extends StatelessWidget {
  const CartContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(medium),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(medium),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: primary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(extraLarge * 2),
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
                      "Veggie tomato mix",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(
                            color: darkText,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                    const SizedBox(height: extraSmall),
                    Text(
                      "\$24.00",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(
                            color: red,
                          ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    QuantityButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

