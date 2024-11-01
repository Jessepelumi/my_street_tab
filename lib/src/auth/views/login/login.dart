import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/auth/controllers/login_controller.dart';
import 'package:my_street_tab/src/auth/views/login/access_location.dart';
import 'package:my_street_tab/src/auth/views/login/forgot_password.dart';
import 'package:my_street_tab/src/auth/views/login/signup.dart';
import 'package:my_street_tab/src/auth/views/login/widgets/auth_textfield.dart';
import 'package:my_street_tab/src/auth/views/login/widgets/login_header.dart';
import 'package:my_street_tab/src/modules/router/user/navigation.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LoginHeader(
              title: "Log In",
              subtitle: "Please sign in to your existing account",
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
                  const SizedBox(height: smallLarge),
                  const AuthTextfield(
                    label: "PASSWORD",
                    placeholder: "password123*",
                    obscure: true,
                    isPassword: true,
                  ),
                  const SizedBox(height: extraSmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Obx(
                            () => Checkbox(
                              activeColor: red.withOpacity(0.8),
                              value: controller.isChecked.value,
                              onChanged: (value) {
                                controller.toggleCheckbox();
                              },
                            ),
                          ),
                          Text(
                            "Remember me",
                            style: GoogleFonts.sen(),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Get.to(() => const ForgotPassword()),
                        child: Text(
                          "Forgot Password",
                          style: GoogleFonts.sen(
                            color: red.withOpacity(0.8),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: small),
                  ClientElevatedButton(
                    buttonText: "LOG IN",
                    buttonAction: () async {
                      LocationPermission permission =
                          await Geolocator.checkPermission();

                      if (permission == LocationPermission.always ||
                          permission == LocationPermission.whileInUse) {
                        Get.to(() => const Navigation());
                      } else {
                        Get.to(() => const AccessLocation());
                      }
                    },
                  ),
                  const SizedBox(height: large),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account? ",
                          style: GoogleFonts.sen(
                            color: darkText.withOpacity(0.7),
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.fontSize,
                          ),
                        ),
                        TextSpan(
                          text: "SIGN UP",
                          style: GoogleFonts.sen(
                            color: red.withOpacity(0.8),
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.fontSize,
                            fontWeight: FontWeight.w700,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => const Signup()),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: large),
                  const Text("Or"),
                  const SizedBox(height: medium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: facebook,
                            borderRadius: BorderRadius.circular(extraLarge),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(extraSmall),
                              child: SvgPicture.asset(
                                IconStrings.facebook,
                                colorFilter: const ColorFilter.mode(
                                  white,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: large),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: google,
                            borderRadius: BorderRadius.circular(extraLarge),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(extraSmall),
                              child: SvgPicture.asset(
                                IconStrings.google,
                                colorFilter: const ColorFilter.mode(
                                  white,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: large),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: apple,
                            borderRadius: BorderRadius.circular(extraLarge),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(extraSmall),
                              child: SvgPicture.asset(
                                IconStrings.apple,
                                colorFilter: const ColorFilter.mode(
                                  white,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
