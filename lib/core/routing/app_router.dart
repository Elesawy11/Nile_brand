import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/features/auth/ui/login_view.dart';
import 'package:nile_brand/features/start/ui/start_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.start,
        builder: (context, state) => StartView(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) => LoginView(),
      ),
    ],
  );
}
