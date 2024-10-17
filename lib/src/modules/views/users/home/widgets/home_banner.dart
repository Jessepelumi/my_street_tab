import 'package:flutter/material.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
    required this.src,
  });

  final String src;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(medium),
      child: Container(
        height: 130,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: primary.withOpacity(0.2),
          borderRadius: BorderRadius.circular(medium),
        ),
        // child: Image.network(
        //   src,
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }
}
