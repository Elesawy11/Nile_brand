import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: Routes.start),
    ],
  );
}
