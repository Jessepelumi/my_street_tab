import 'package:flutter/material.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class BestsellerContainer extends StatelessWidget {
  const BestsellerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(medium),
          child: Container(
            height: 110,
            width: 72,
            decoration: BoxDecoration(
              color: primary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(medium),
            ),
            child: Image.network(
              "",
              fit: BoxFit.cover,
            ),
          ),
        ),
    
        // price tag
        Positioned(
          bottom: 15,
          right: -2,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: extraSmall),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(smallMedium),
                bottomLeft: Radius.circular(smallMedium),
              ),
            ),
            child: Text(
              "\$50.0",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: white),
            ),
          ),
        ),
      ],
    );
  }
}
