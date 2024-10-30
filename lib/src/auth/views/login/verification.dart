import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/auth/views/login/widgets/login_header.dart';
import 'package:my_street_tab/src/auth/views/shared/pin_input.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LoginHeader(
              title: "Verification",
              subtitle: "We have sent a code to your email example@gmail.com",
              hasPrevious: true,
            ),
            const SizedBox(height: large),

            // form
            Padding(
              padding: const EdgeInsets.all(large),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "CODE",
                        style: GoogleFonts.sen(color: darkText),
                      ),
                      Row(
                        children: [
                          Text(
                            "Resend",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const SizedBox(width: extraSmall),
                          Text("in.50 sec", style: GoogleFonts.sen()),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: small),
                  PinInput(
                    onComplete: () {},
                    length: 4,
                    obscure: false,
                  ),
                  const SizedBox(height: small),
                  ClientElevatedButton(
                    buttonText: "VERIFY",
                    buttonAction: () {},
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
