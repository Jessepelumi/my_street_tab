import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/users/search/search_details.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class KeywordsContainer extends StatelessWidget {
  const KeywordsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const SearchDetails()),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: medium,
          vertical: small,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: darkText.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(large),
        ),
        child: Text(
          "Burger",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}