import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/modules/views/shared/custom_appbar.dart';
import 'package:my_street_tab/src/modules/views/users/profile/widgets/help_center_tile.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Help Center"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(large),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, how can we help you?",
                style: GoogleFonts.sen(
                  fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
                ),
              ),
              const SizedBox(height: smallMedium),
              HelpCenterTile(
                asset: IconStrings.dashboard,
                assetColor: facebook,
                title: "General",
                subtitle: "Basic questions about My Street Tab",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
