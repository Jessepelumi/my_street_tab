import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class ReviewsSummary extends StatelessWidget {
  const ReviewsSummary({
    super.key,
    required this.rating,
    required this.amount,
  });

  final String rating, amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(medium),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(medium),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reviews",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "See All Reviews",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: red.withOpacity(0.7),
                        decoration: TextDecoration.underline,
                        decorationColor: red.withOpacity(0.7),
                        //decorationStyle: textdec
                      ),
                ),
              ),
            ],
          ),
          const SizedBox(height: smallLarge),
          Row(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    IconStrings.star,
                    colorFilter: ColorFilter.mode(
                      red.withOpacity(0.7),
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: extraSmall),
                  Text(
                    rating,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: red.withOpacity(0.7),
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ],
              ),
              const SizedBox(width: smallMedium),
              Text(
                "$amount Total Reviews",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          )
        ],
      ),
    );
  }
}
