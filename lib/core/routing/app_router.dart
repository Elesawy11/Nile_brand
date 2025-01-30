import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/features/auth/ui/create_account.dart';
import 'package:nile_brand/features/auth/ui/forgot_password_view.dart';
import 'package:nile_brand/features/auth/ui/login_view.dart';
import 'package:nile_brand/features/auth/ui/reset_password.dart';
import 'package:nile_brand/features/home/ui/home_view.dart';
import 'package:nile_brand/features/start/ui/start_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.start,
        builder: (context, state) => const StartView(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: Routes.forgotPassword,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: Routes.resetPassword,
        builder: (context, state) => const ResetPasswordView(),
      ),
      GoRoute(
        path: Routes.creatAccount,
        builder: (context, state) => const CreateAccountView(),
      ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
