import 'package:get/get.dart';

class HomeBannerController extends GetxController {
  static HomeBannerController get instance => Get.find();

  final carouselCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }
}