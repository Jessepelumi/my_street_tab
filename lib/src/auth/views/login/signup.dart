import 'package:flutter/material.dart';
import 'package:my_street_tab/src/auth/views/login/widgets/auth_textfield.dart';
import 'package:my_street_tab/src/auth/views/login/widgets/login_header.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const LoginHeader(
            title: "Sign Up",
            subtitle: "Please sign uo to get started",
            hasPrevious: true,
          ),
          const SizedBox(height: large),

          // form
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(large),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AuthTextfield(
                      label: "NAME",
                      placeholder: "John Doe",
                    ),
                    SizedBox(height: smallLarge),
                    AuthTextfield(
                      label: "EMAIL",
                      placeholder: "example@gmail.com",
                    ),
                    SizedBox(height: smallLarge),
                    AuthTextfield(
                      label: "PASSWORD",
                      placeholder: "password123*",
                      obscure: true,
                      isPassword: true,
                    ),
                    SizedBox(height: smallLarge),
                    AuthTextfield(
                      label: "RE-TYPE PASSWORD",
                      placeholder: "password123*",
                      obscure: true,
                      isPassword: true,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // button
          Padding(
            padding: const EdgeInsets.only(
              left: large,
              right: large,
              bottom: large,
            ),
            child: ClientElevatedButton(
              buttonText: "SIGN UP",
              buttonAction: () {},
            ),
          ),
        ],
      ),
    );
  }
}
