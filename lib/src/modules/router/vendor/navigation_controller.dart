import 'package:get/state_manager.dart';
import 'package:my_street_tab/src/modules/views/vendors/add/add.dart';
import 'package:my_street_tab/src/modules/views/vendors/home/home.dart';
import 'package:my_street_tab/src/modules/views/vendors/menu/menu.dart';
import 'package:my_street_tab/src/modules/views/vendors/notification/notification.dart';
import 'package:my_street_tab/src/modules/views/vendors/profile/profile.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = const [
    Home(),
    Menu(),
    Add(),
    Notification(),
    Profile(),
  ];
}
