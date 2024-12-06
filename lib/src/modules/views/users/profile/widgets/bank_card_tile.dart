import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class BankCardTile extends StatelessWidget {
  const BankCardTile({
    super.key,
    required this.cardType,
    required this.cardNumber,
    required this.select,
    required this.isActive,
  });

  final String cardType, cardNumber;
  final VoidCallback select;
  final bool isActive;

  String formatCardNumber(String cardNumber) {
    if (cardNumber.length != 16) return cardNumber;
    return "**** **** **** ${cardNumber.substring(12)}";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: select,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: medium,
          vertical: smallMedium,
        ),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(smallLarge),
          border: Border.all(
            color: isActive ? red.withOpacity(0.6) : primary.withOpacity(0.2),
            width: isActive ? 1.65 : 1.0,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(IconStrings.bankCard),
            const SizedBox(width: medium),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardType,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: extraSmall),
                  Text(
                    formatCardNumber(cardNumber),
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: darkText.withOpacity(0.6),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
