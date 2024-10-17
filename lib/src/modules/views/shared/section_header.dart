import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    this.isAction = true,
    required this.title,
    this.actionText,
    this.action,
  });

  final bool isAction;
  final String title;
  final String? actionText;
  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontSize: smallLarge,
                fontWeight: FontWeight.w700,
              ),
        ),
        if (isAction == true)
          Row(
            children: [
              GestureDetector(
                onTap: action!,
                child: Text(
                  actionText!,
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
