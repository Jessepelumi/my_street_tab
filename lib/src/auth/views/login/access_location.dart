import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/locale/location_service.dart';
import 'package:my_street_tab/src/modules/views/users/home/home.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/constants/image_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class AccessLocation extends StatelessWidget {
  const AccessLocation({super.key});

  Future<void> _getLocationAndNavigate() async {
    Position? position = await LocationService.determinePosition();
    if (position != null) {
      debugPrint(
        "User's location: ${position.latitude}, ${position.longitude}",
      );
      Get.to(() => const Home());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(large),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageStrings.locationAccess),
            const SizedBox(height: extraLarge * 2),
            ElevatedButton(
              onPressed: _getLocationAndNavigate,
              //onPressed: () => Get.to(() => const Home()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("ACCESS LOCATION"),
                  const SizedBox(width: small),
                  Container(
                    padding: const EdgeInsets.all(extraSmall),
                    decoration: BoxDecoration(
                      color: white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(extraLarge),
                    ),
                    child: SvgPicture.asset(
                      IconStrings.locationOutlined,
                      colorFilter:
                          const ColorFilter.mode(white, BlendMode.srcIn),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: large),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: small),
              child: Text(
                "MY STREET TAB WILL ACCESS YOUR LOCATION ONLY WHILE USING THE APP",
                textAlign: TextAlign.center,
                style: GoogleFonts.sen(
                  color: darkText.withOpacity(0.7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
