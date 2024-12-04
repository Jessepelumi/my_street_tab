import 'package:flutter/material.dart';
import 'package:my_street_tab/src/auth/views/login/widgets/auth_textfield.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/modules/views/shared/custom_appbar.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class NewCard extends StatelessWidget {
  const NewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "New Card"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(large),
          child: Column(
            children: [
              const AuthTextfield(
                  label: "Card Holder Name", placeholder: "John Smith"),
              const SizedBox(height: medium),
              const AuthTextfield(
                  label: "Card Number", placeholder: "1234 5678 9012 3456"),
              const SizedBox(height: medium),
              const Row(
                children: [
                  Expanded(
                    child: AuthTextfield(
                        label: "Expiry Date", placeholder: "MM/YY"),
                  ),
                  SizedBox(width: smallMedium),
                  Expanded(
                    child: AuthTextfield(
                      label: "CVV",
                      placeholder: "XXX",
                      obscure: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: large),
              ClientElevatedButton(
                buttonText: "SAVE CARD",
                buttonAction: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
