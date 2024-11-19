import 'package:get/get.dart';

class ToggleController extends GetxController {
  var isNotificationSwitched = false.obs;
  var isLocationSwitched = false.obs;

  void toggleNotificationSwitch(bool value) {
    isNotificationSwitched.value = value;
  }

  void toggleLocationSwitch(bool value) {
    isLocationSwitched.value = value;
  }
}
