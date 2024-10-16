import 'package:flutter/material.dart';
import 'package:my_street_tab/src/modules/views/users/home/widgets/categories.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Categories(
          category: "Snacks",
          asset: IconStrings.snacks,
        ),
        Categories(
          category: "Meal",
          asset: IconStrings.meals,
        ),
        Categories(
          category: "Vegan",
          asset: IconStrings.vegan,
        ),
        Categories(
          category: "Dessert",
          asset: IconStrings.desserts,
        ),
        Categories(
          category: "Drinks",
          asset: IconStrings.drinks,
        ),
      ],
    );
  }
}
