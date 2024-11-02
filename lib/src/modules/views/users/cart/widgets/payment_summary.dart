import 'package:flutter/material.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: smallMedium,
        vertical: small,
      ),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(medium),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Summary",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(height: small),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Items",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: darkText.withOpacity(0.6),
                    ),
              ),
              Text(
                "\$186.50",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(height: extraSmall),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery Fee",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: darkText.withOpacity(0.6),
                    ),
              ),
              Text(
                "\$20.00",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(height: extraSmall),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: darkText.withOpacity(0.6),
                    ),
              ),
              Text(
                "-\$0.00",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: red.withOpacity(0.8),
                    ),
              ),
            ],
          ),
          const SizedBox(height: extraSmall),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: darkText.withOpacity(0.6),
                    ),
              ),
              Text(
                "\$206.50",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(height: extraSmall),
        ],
      ),
    );
  }
}
