import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.category,
    required this.asset,
  });

  final String category, asset;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(small),
          decoration: BoxDecoration(
            color: primary.withOpacity(0.2),
            borderRadius: BorderRadius.circular(extraLarge),
          ),
          child: SvgPicture.asset(asset),
        ),
        Text(
          category,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ],
    );
  }
}
