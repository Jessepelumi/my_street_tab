import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/users/chat/chat_details.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const ChatDetails()),
      child: Container(
        padding: const EdgeInsets.all(smallMedium),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(medium),
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(extraLarge),
                    ),
                  ),
                  const SizedBox(width: small),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Geopart Etdsien",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      Text(
                        "Your order just arived!",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: darkText.withOpacity(0.55),
                            ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "13:47",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: darkText.withOpacity(0.5),
                      ),
                ),
                const SizedBox(height: extraSmall / 2),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(extraLarge),
                  ),
                  child: const Center(
                    child: Text(
                      "3",
                      style: TextStyle(color: white, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
