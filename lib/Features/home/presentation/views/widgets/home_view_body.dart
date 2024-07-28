import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_desktop_app/Core/utils/app_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ],
    );
  }
}
