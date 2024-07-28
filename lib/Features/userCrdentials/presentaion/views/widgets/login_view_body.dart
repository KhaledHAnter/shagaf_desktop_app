import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:shagaf_desktop_app/Core/utils/assets.dart';
import 'package:shagaf_desktop_app/Core/utils/styles.dart';
import 'package:shagaf_desktop_app/Features/userCrdentials/presentaion/views/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 62,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.imagesBackgorund2),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Expanded(
          flex: 38,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(Assets.imagesLogo),
              const Gap(48),
              const Padding(
                padding: EdgeInsets.only(left: 48, right: 100),
                child: LoginForm(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
