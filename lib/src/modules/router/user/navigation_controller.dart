import 'package:get/state_manager.dart';
import 'package:my_street_tab/src/modules/views/users/chat/chat.dart';
import 'package:my_street_tab/src/modules/views/users/home/home.dart';
import 'package:my_street_tab/src/modules/views/users/location/location.dart';
import 'package:my_street_tab/src/modules/views/users/notification/notification.dart';
import 'package:my_street_tab/src/modules/views/users/profile/profile.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = const [
    Home(),
    Location(),
    Chat(),
    Notification(),
    Profile(),
  ];
}
