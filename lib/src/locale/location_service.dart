import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';

class LocationService {
  // function to retrieve location
  static Future<Position?> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      Get.snackbar(
        "Enabled Location",
        "Encusre location services are enabled.",
        backgroundColor: primary,
        colorText: white,
      );
      return null;
    }

    // check for location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Get.snackbar(
          "Permission Denied",
          "Location permission is required to access this feature.",
          backgroundColor: red.withOpacity(0.7),
          colorText: white,
        );
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Get.snackbar(
        "Permission Denied",
        "Location permission is permanently denied. Please enable it in settings.",
        backgroundColor: red.withOpacity(0.7),
        colorText: white,
      );
      return null;
    }

    // get current location
    try {
      return await Geolocator.getCurrentPosition();
    } catch (e) {
      debugPrint("Error getting location: $e");
      Get.snackbar(
        "Location Error",
        "Failed to retrieve location. Please try again.",
        backgroundColor: red,
        colorText: white,
      );
      return null;
    }
  }
}
