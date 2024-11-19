import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_street_tab/src/auth/views/login/widgets/auth_textfield.dart';
import 'package:my_street_tab/src/modules/views/shared/client_elevated_button.dart';
import 'package:my_street_tab/src/modules/views/shared/custom_appbar.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Personal Data"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(large),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(extraLarge * 10),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 2,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(extraSmall),
                        decoration: BoxDecoration(
                          color: primary.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(extraLarge),
                        ),
                        child: SvgPicture.asset(
                          IconStrings.edit,
                          width: 21,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: medium),
              const AuthTextfield(label: "Full Name", placeholder: "Full Name"),
              const SizedBox(height: medium),
              const AuthTextfield(
                  label: "Email", placeholder: "jamesmith@gmail.com"),
              const SizedBox(height: medium),
              const AuthTextfield(
                  label: "Phone", placeholder: "+1 123-456-7890"),
              const SizedBox(height: large),
              ClientElevatedButton(
                buttonText: "SAVE",
                buttonAction: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
