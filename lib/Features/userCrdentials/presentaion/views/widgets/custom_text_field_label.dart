import 'package:flutter/material.dart';
import 'package:shagaf_desktop_app/Core/utils/styles.dart';

class CustomTextFieldLabel extends StatelessWidget {
  const CustomTextFieldLabel({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.regular14.copyWith(color: const Color(0XFF333333)),
    );
  }
}
