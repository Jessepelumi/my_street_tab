import 'package:flutter/material.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class SearchSectionTitle extends StatelessWidget {
  const SearchSectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontSize: smallLarge,
          ),
    );
  }
}
