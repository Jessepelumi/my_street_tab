import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.location,
  });

  final String location;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(small * 1.5),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: SvgPicture.asset(
                    IconStrings.headerMenu,
                    width: 24,
                  ),
                ),
              ),
              const SizedBox(width: medium),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LOCATION",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: red.withOpacity(0.85),
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  Row(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.35,
                        ),
                        child: Text(
                          location,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: darkText.withOpacity(0.8),
                                  ),
                        ),
                      ),
                      const Icon(Icons.arrow_drop_down_rounded),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: primary.withOpacity(0.2),
            borderRadius: BorderRadius.circular(100),
          ),
        )
      ],
    );
  }
}
