import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class ActionHeader extends StatelessWidget {
  const ActionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Best Seller",
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontSize: smallLarge,
                fontWeight: FontWeight.w700,
              ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Text(
                "View All",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            SvgPicture.asset(
              IconStrings.arrowRight,
              width: medium,
            ),
          ],
        )
      ],
    );
  }
}
