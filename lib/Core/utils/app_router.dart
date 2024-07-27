import 'package:go_router/go_router.dart';
import 'package:shagaf_desktop_app/Features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kLoginView = '/loginView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
