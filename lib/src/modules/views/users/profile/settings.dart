import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/modules/views/shared/custom_appbar.dart';
import 'package:my_street_tab/src/modules/views/users/controller/toggle_controller.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final ToggleController toggleController = Get.put(ToggleController());

    return Scaffold(
      appBar: const CustomAppBar(title: "Settings"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(large),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile",
                style: GoogleFonts.sen(
                  fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Push Notifications",
                    style: GoogleFonts.sen(
                      fontSize:
                          Theme.of(context).textTheme.titleMedium?.fontSize,
                    ),
                  ),
                  Obx(
                    () => Switch(
                      value: toggleController.isNotificationSwitched.value,
                      onChanged: toggleController.toggleNotificationSwitch,
                      activeColor: white,
                      activeTrackColor: red.withOpacity(0.8),
                      inactiveThumbColor: white,
                      inactiveTrackColor: primary.withOpacity(0.2),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Location",
                    style: GoogleFonts.sen(
                      fontSize:
                          Theme.of(context).textTheme.titleMedium?.fontSize,
                    ),
                  ),
                  Obx(
                    () => Switch(
                      value: toggleController.isLocationSwitched.value,
                      onChanged: toggleController.toggleLocationSwitch,
                      activeColor: white,
                      activeTrackColor: red.withOpacity(0.8),
                      inactiveThumbColor: white,
                      inactiveTrackColor: primary.withOpacity(0.2),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: smallMedium),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Language",
                        style: GoogleFonts.sen(
                          fontSize:
                              Theme.of(context).textTheme.titleMedium?.fontSize,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "English",
                          style: GoogleFonts.sen(
                            color: darkText.withOpacity(0.7),
                            fontSize: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.fontSize,
                          ),
                        ),
                        const SizedBox(width: extraSmall),
                        SvgPicture.asset(IconStrings.arrowRight),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: large),
              Text(
                "Other",
                style: GoogleFonts.sen(
                  fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
                ),
              ),
              const SizedBox(height: medium),
              OtherSettingsTile(
                title: "About My Street Tab",
                action: () {},
              ),
              const SizedBox(height: medium),
              OtherSettingsTile(
                title: "Privacy Policy",
                action: () {},
              ),
              const SizedBox(height: medium),
              OtherSettingsTile(
                title: "Terms and Conditions",
                action: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OtherSettingsTile extends StatelessWidget {
  const OtherSettingsTile({
    super.key,
    required this.title,
    required this.action,
  });

  final String title;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.sen(
              fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
            ),
          ),
          SvgPicture.asset(IconStrings.arrowRight),
        ],
      ),
    );
  }
}
