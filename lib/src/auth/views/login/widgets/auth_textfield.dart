import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class AuthTextfield extends StatelessWidget {
  const AuthTextfield({
    super.key,
    required this.label,
    required this.placeholder,
    this.obscure = false,
    this.isPassword = false,
  });

  final String label, placeholder;
  final bool obscure, isPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.sen(color: darkText),
        ),
        const SizedBox(height: small),
        Container(
          decoration: BoxDecoration(
            color: primary.withOpacity(0.12),
            borderRadius: BorderRadius.circular(small),
          ),
          child: TextField(
            obscureText: obscure,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              suffixIcon: isPassword == true
                  ? Icon(
                      Icons.remove_red_eye_sharp,
                      color: darkText.withOpacity(0.5),
                    )
                  : const SizedBox.shrink(),
              label: Text(
                placeholder,
                style: GoogleFonts.sen(
                  color: darkText.withOpacity(0.5),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(small),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(small),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
