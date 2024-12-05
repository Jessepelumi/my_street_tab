import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/modules/views/shared/custom_appbar.dart';
import 'package:my_street_tab/src/modules/views/users/profile/cards.dart';
import 'package:my_street_tab/src/modules/views/users/profile/help_center.dart';
import 'package:my_street_tab/src/modules/views/users/profile/personal_data.dart';
import 'package:my_street_tab/src/modules/views/users/profile/settings.dart';
import 'package:my_street_tab/src/modules/views/users/profile/widgets/profilesetting_tile.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Profile Settings", isPageHeader: true),
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
              const SizedBox(height: small),
              Text(
                "John Smith",
                style: GoogleFonts.sen(
                  fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "johnsmith@gmail.com",
                style: GoogleFonts.sen(
                  fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
                  color: darkText.withOpacity(0.7),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: small),
                child: Divider(),
              ),

              // first tile
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Profile",
                    style: GoogleFonts.sen(
                      fontSize:
                          Theme.of(context).textTheme.labelLarge?.fontSize,
                    ),
                  ),
                  const SizedBox(height: medium),
                  ProfileSettingTile(
                    action: () => Get.to(() => const PersonalData()),
                    title: "Personal Data",
                    asset: IconStrings.profile,
                  ),
                  const SizedBox(height: medium),
                  ProfileSettingTile(
                    action: () => Get.to(() => const Settings()),
                    title: "Settings",
                    asset: IconStrings.settings,
                  ),
                  const SizedBox(height: medium),
                  ProfileSettingTile(
                    action: () => Get.to(() => Cards()),
                    title: "Cards",
                    asset: IconStrings.card,
                  ),
                ],
              ),
              const SizedBox(height: smallLarge),

              // second tile
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Support",
                    style: GoogleFonts.sen(
                      fontSize:
                          Theme.of(context).textTheme.labelLarge?.fontSize,
                    ),
                  ),
                  const SizedBox(height: medium),
                  ProfileSettingTile(
                    action: () => Get.to(() => const HelpCenter()),
                    title: "Help Center",
                    asset: IconStrings.help,
                  ),
                  const SizedBox(height: medium),
                  ProfileSettingTile(
                    action: () {},
                    title: "Delete Account",
                    asset: IconStrings.bin,
                  ),
                ],
              ),
              const SizedBox(height: extraLarge),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: darkText.withOpacity(0.2),
                  ),
                  minimumSize: const Size(double.infinity, 52),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      IconStrings.logout,
                      colorFilter: const ColorFilter.mode(
                        delete,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: small),
                    Text(
                      "Sign Out",
                      style: GoogleFonts.sen(
                        color: delete,
                        fontSize:
                            Theme.of(context).textTheme.titleMedium?.fontSize,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
