import 'package:flutter/material.dart';
import 'package:shagaf_desktop_app/Core/utils/styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key, required this.text, this.onTap, this.isLoading = false});

  final String text;
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xff007AFF),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: Styles.bold16.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
