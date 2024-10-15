import 'package:flutter/material.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      //clipper: CustomCurveClipper(),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(color: Colors.blue),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: TextFormField(
                              cursorColor: darkText.withOpacity(0.7),
                              cursorHeight: 16.0,
                              decoration: const InputDecoration(
                                hintText: "Search",
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.all(4),
                              ),
                            ),
                          ),
                          Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                              color: darkText,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),

              // greeting
              Text(
                "Good Morning",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                "Rice and Shine! It's Breakfast Time",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
