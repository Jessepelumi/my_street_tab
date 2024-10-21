import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/users/controller/checkout_controller.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class CheckoutMethod extends StatelessWidget {
  CheckoutMethod({
    super.key,
    required this.title,
    required this.value,
    this.isPayment = true,
    this.containerColor,
    required this.groupValue,
    required this.changeAction,
  });

  final String title;
  final int value, groupValue;
  final bool isPayment;
  final Color? containerColor;
  final void Function(int?) changeAction;

  final CheckoutController controller = Get.put(CheckoutController());

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      activeColor: red,
      contentPadding: const EdgeInsets.all(0),
      title: isPayment == true
          ? Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(small),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(small),
                    child: SvgPicture.asset(
                      IconStrings.bankCard,
                      colorFilter: const ColorFilter.mode(
                        white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(small),
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: darkText),
                  ),
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: small),
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: darkText),
              ),
            ),
      value: value,
      groupValue: groupValue,
      onChanged: changeAction,
    );
  }
}
