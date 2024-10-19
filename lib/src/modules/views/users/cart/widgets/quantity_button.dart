import 'package:flutter/material.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: extraSmall),
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(small),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.remove,
              color: white,
              size: smallMedium,
            ),
          ),
          const SizedBox(width: extraSmall),
          Text(
            "1",
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: white,
                ),
          ),
          const SizedBox(width: extraSmall),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.add,
              color: white,
              size: smallMedium,
            ),
          ),
        ],
      ),
    );
  }
}
