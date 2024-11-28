import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class HelpCenterTile extends StatelessWidget {
  const HelpCenterTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.asset,
    required this.assetColor, required this.onTap,
  });

  final String title, subtitle, asset;
  final Color assetColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.all(medium),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(smallMedium),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              asset,
              colorFilter: ColorFilter.mode(assetColor, BlendMode.srcIn),
            ),
            const SizedBox(width: small),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: darkText.withOpacity(0.6),
                      ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
