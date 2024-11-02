import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
}
