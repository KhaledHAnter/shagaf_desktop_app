import 'package:flutter/material.dart';
import 'package:shagaf_desktop_app/Core/utils/app_router.dart';

void main() {
  runApp(const ShagafDesktop());
}

class ShagafDesktop extends StatelessWidget {
  const ShagafDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      title: 'Shagaf Desktop App',
    );
  }
}
