import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinInputController extends GetxController {
  final TextEditingController pinController = TextEditingController();
  final currentPin = ''.obs;

  void onPinChanged(String value) {
    currentPin.value = value;
  }

  void onPinComplete(VoidCallback onComplete) {
    onComplete();
  }
}

class PinInput extends StatelessWidget {
  final VoidCallback onComplete;
  final int length;
  final bool obscure;

  const PinInput({
    super.key,
    required this.onComplete,
    required this.length,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PinInputController());

    return Center(
      child: PinCodeTextField(
        appContext: context,
        length: length,
        animationType: AnimationType.fade,
        keyboardType: TextInputType.number,
        obscureText: obscure,
        showCursor: false,
        enableActiveFill: true,
        controller: controller.pinController,
        onChanged: controller.onPinChanged,
        onCompleted: (value) {
          controller.onPinComplete(onComplete);
        },
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderWidth: 0,
          borderRadius: BorderRadius.circular(smallMedium),
          fieldHeight: 60,
          fieldWidth: 60,
          inactiveColor: Colors.transparent,
          activeColor: Colors.transparent,
          selectedColor: Colors.transparent,
          inactiveFillColor: primary.withOpacity(0.12),
          activeFillColor: primary.withOpacity(0.12),
          selectedFillColor: primary.withOpacity(0.12),
          //errorBorderColor: red.withOpacity(0.12),
        ),
      ),
    );
  }
}
