import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_desktop_app/Core/utils/app_router.dart';
import 'package:shagaf_desktop_app/Core/utils/assets.dart';
import 'package:shagaf_desktop_app/constants.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    navigateToLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: kGreenBackgroundColor,
              image: DecorationImage(
                image: AssetImage(Assets.imagesSplashBachground),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Image.asset(
                Assets.imagesLogo1,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void navigateToLogin() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
      },
    );
  }
}
