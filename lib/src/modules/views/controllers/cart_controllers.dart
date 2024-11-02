import 'package:get/get.dart';

class CartControllers extends GetxController {
  var isChecked = false.obs;
  var quantity = 1.obs;

  void toggleCheckbox() {
    isChecked.value = !isChecked.value;
  }

  void incrementQuantity() {
    quantity.value++;
  }

  void decrementQuantity() {
    if (quantity.value > 1) {
      quantity.value--;
    }
  }
}
