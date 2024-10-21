import 'package:flutter/material.dart';

class ClientElevatedButton extends StatelessWidget {
  const ClientElevatedButton({
    super.key,
    required this.buttonText,
    required this.buttonAction,
  });

  final String buttonText;
  final VoidCallback buttonAction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: buttonAction,
        child: Text(buttonText),
      ),
    );
  }
}
