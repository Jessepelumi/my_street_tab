import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/auth/views/login/verification.dart';
import 'package:my_street_tab/src/auth/views/login/widgets/auth_textfield.dart';
import 'package:my_street_tab/src/auth/views/login/widgets/login_header.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LoginHeader(
              title: "Forgot Password",
              subtitle: "Please sign in to your existing account",
              hasPrevious: true,
            ),
            const SizedBox(height: large),

            // form
            Padding(
              padding: const EdgeInsets.all(large),
              child: Column(
                children: [
                  const AuthTextfield(
                    label: "EMAIL",
                    placeholder: "example@gmail.com",
                  ),
                  const SizedBox(height: large),
                  ClientElevatedButton(
                    buttonText: "SEND CODE",
                    buttonAction: () => Get.to(() => const Verification()),
                  ),
                  const SizedBox(height: large),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
