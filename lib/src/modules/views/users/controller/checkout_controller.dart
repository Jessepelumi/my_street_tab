import 'package:get/get.dart';

class CheckoutController extends GetxController {
  RxInt selectedPaymentMethod = 1.obs;
  RxInt selectedDeliveryMethod = 1.obs;

  void updatePaymentMethod(int value) {
    selectedPaymentMethod.value = value;
  }

  void updateDeliveryMethod(int value) {
    selectedDeliveryMethod.value = value;
  }
}
