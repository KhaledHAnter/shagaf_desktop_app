import 'package:flutter/material.dart';
import 'package:shagaf_desktop_app/Core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.validator,
    this.onChanged,
    this.obscureText = false,
    this.autoValidate = false,
    this.suffixIcon,
  });

  final String hint;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool obscureText, autoValidate;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      autovalidateMode:
          autoValidate ? AutovalidateMode.onUserInteraction : null,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        hintText: hint,
        hintStyle: Styles.regular16,
        fillColor: const Color(0XFFF2F2F2),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        suffixIcon: suffixIcon,
        suffixIconColor: const Color(0XFF4D4D4D),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide.none,
    );
  }
}
