import 'package:flutter/material.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({
    super.key,
    required this.amount,
    required this.title,
  });

  final String amount, title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(medium),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(medium),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              amount,
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: darkText,
                    fontWeight: FontWeight.w900,
                  ),
            ),
            Text(
              title.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: darkText.withOpacity(0.7),
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
