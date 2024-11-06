import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/views/controllers/order_status.dart';

class DraggableSheetController extends GetxController {
  final draggableController = DraggableScrollableController();
  final initialSize = 0.175.obs;

  void adjustDraggableSheet(double delta, double screenHeight) {
    draggableController.jumpTo(
      draggableController.size - delta / screenHeight,
    );
  }

  @override
  void onClose() {
    draggableController.dispose();
    super.onClose();
  }

  // logic for order tracking
  var orderStatuses = [
    OrderStatus(
      label: 'Your order has been received',
      isCompleted: true,
    ),
    OrderStatus(
      label: 'The restaurant is preparing your food',
      isCurrent: true,
    ),
    OrderStatus(label: 'Your order has been picked up for delivery'),
    OrderStatus(label: 'Order arriving soon!'),
  ].obs;

  void updateStatus(int index) {
    for (var i = 0; i < orderStatuses.length; i++) {
      orderStatuses[i] = OrderStatus(
        label: orderStatuses[i].label,
        isCompleted: i < index,
        isCurrent: i == index,
      );
    }
  }
}
