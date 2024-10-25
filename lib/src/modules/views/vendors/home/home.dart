import 'package:flutter/material.dart';
import 'package:my_street_tab/src/modules/views/vendors/home/widgets/home_header.dart';
import 'package:my_street_tab/src/modules/views/vendors/home/widgets/order_status.dart';
import 'package:my_street_tab/src/modules/views/vendors/home/widgets/reviews_summary.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(smallLarge),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // home header
                HomeHeader(location: "Halal Lab Office"),
                SizedBox(height: large),

                // order status container
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OrderStatus(
                      amount: "20",
                      title: "running orders",
                    ),
                    SizedBox(width: smallLarge),
                    OrderStatus(
                      amount: "05",
                      title: "order request",
                    ),
                  ],
                ),
                SizedBox(height: medium),

                // reviews
                ReviewsSummary(rating: "4.9", amount: "411"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
