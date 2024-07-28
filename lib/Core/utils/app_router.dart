import 'package:go_router/go_router.dart';
import 'package:shagaf_desktop_app/Features/home/presentation/views/home_view.dart';
import 'package:shagaf_desktop_app/Features/splash/presentation/views/splash_view.dart';
import 'package:shagaf_desktop_app/Features/userCrdentials/presentaion/views/login_view.dart';

abstract class AppRouter {
  static const kLoginView = '/loginView';
  static const kHomeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
