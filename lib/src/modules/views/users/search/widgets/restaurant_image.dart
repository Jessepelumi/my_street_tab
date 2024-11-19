import 'package:flutter/material.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class RestaurantImage extends StatelessWidget {
  const RestaurantImage({
    super.key,
    required this.src,
  });

  final String src;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(large),
        bottomRight: Radius.circular(large),
      ),
      child: Container(
        height: 320,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: primary.withOpacity(0.2),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(large),
            bottomRight: Radius.circular(large),
          ),
        ),
        // child: Image.network(
        //   src,
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }
}
