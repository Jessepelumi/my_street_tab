import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/modules/views/shared/custom_appbar.dart';
import 'package:my_street_tab/src/modules/views/users/controller/select_card_controller.dart';
import 'package:my_street_tab/src/modules/views/users/profile/new_card.dart';
import 'package:my_street_tab/src/modules/views/users/profile/widgets/bank_card_tile.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/image_strings.dart';
import 'package:my_street_tab/src/utils/core/card_logo.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Cards extends StatelessWidget {
  Cards({super.key});

  final controller = Get.put(SelectCardController());

  String formatCardNumber(String cardNumber) {
    if (cardNumber.length != 16) return cardNumber;

    return "**** **** **** ${cardNumber.substring(12)}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Cards",
        hasAction: controller.cards.isEmpty ? false : true,
        action: () {},
        iconData: Icons.delete,
        color: red,
      ),
      body: Obx(() {
        // when card list is empty
        if (controller.cards.isEmpty) {
          return Padding(
            padding: const EdgeInsets.all(large),
            child: Column(
              children: [
                const SizedBox(height: smallLarge),
                Container(
                  padding: const EdgeInsets.all(large),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(medium),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        ImageStrings.noCard,
                        width: extraLarge * 7,
                      ),
                      const SizedBox(height: medium),
                      Text(
                        "No card added",
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Text(
                        "You can add a card and save it for later",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: darkText.withOpacity(0.6),
                            ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: smallLarge),
                ClientElevatedButton(
                  buttonText: "ADD NEW",
                  buttonAction: () => Get.to(() => const NewCard()),
                ),
              ],
            ),
          );
        }

        // screen when card list is not empty
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(large),
            child: Column(
              children: [
                // dummy bank card
                Container(
                  padding: const EdgeInsets.all(smallLarge),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [red.withOpacity(0.7), red.withOpacity(0.8), red],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(medium),
                  ),
                  child: Obx(
                    () {
                      final selectedCard = controller.selectedIndex.value !=
                                  null &&
                              controller.selectedIndex.value! <
                                  controller.cards.length
                          ? controller.cards[controller.selectedIndex.value!]
                          : null;

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            getCardLogo(selectedCard?["cardType"] ?? "default"),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: small,
                              vertical: extraSmall,
                            ),
                            decoration: BoxDecoration(
                              color: white.withOpacity(0.3),
                            ),
                            child: Text(
                              formatCardNumber(selectedCard?["cardNumber"] ??
                                  "**** **** **** ****"),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    color: white,
                                  ),
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: small,
                                      vertical: extraSmall,
                                    ),
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.3),
                                    ),
                                    child: Text(
                                      "Card Holder Name",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(
                                            color: white,
                                          ),
                                    ),
                                  ),
                                  const SizedBox(height: extraSmall),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: small,
                                      vertical: extraSmall,
                                    ),
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.3),
                                    ),
                                    child: Text(
                                      selectedCard?["cardName"] ?? "**** ****",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(
                                            color: white,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: small),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: small,
                                      vertical: extraSmall,
                                    ),
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.3),
                                    ),
                                    child: Text(
                                      "Expiry Date",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(
                                            color: white,
                                          ),
                                    ),
                                  ),
                                  const SizedBox(height: extraSmall),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: small,
                                      vertical: extraSmall,
                                    ),
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.3),
                                    ),
                                    child: Text(
                                      selectedCard?["expiryDate"] ?? "**/**",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(
                                            color: white,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: smallLarge),
                ...List.generate(
                  controller.cards.length,
                  (index) {
                    final card = controller.cards[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: smallMedium),
                      child: BankCardTile(
                        select: () => controller.selectCard(index),
                        cardType: card["cardType"]!,
                        cardNumber: card["cardNumber"]!,
                        //cardLogo: getCardLogo(card["cardLogo"]!),
                        isActive: controller.selectedIndex.value == index,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      }),
      bottomNavigationBar: Obx(
        () {
          if (controller.cards.isNotEmpty) {
            return Padding(
              padding: const EdgeInsets.all(large),
              child: ClientElevatedButton(
                buttonText: "ADD NEW",
                buttonAction: () => Get.to(() => const NewCard()),
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
