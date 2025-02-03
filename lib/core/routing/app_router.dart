import 'package:go_router/go_router.dart';
import 'package:nile_brand/app_navigation_bar.dart';
import 'package:nile_brand/core/routing/routes.dart';

import 'package:nile_brand/features/profile/ui/edit_profile.dart';
import 'package:nile_brand/features/profile/ui/feedback.dart';
import 'package:nile_brand/features/profile/ui/payment_methods.dart';

import 'package:nile_brand/features/auth/ui/views/create_account.dart';
import 'package:nile_brand/features/auth/ui/views/forgot_password_view.dart';
import 'package:nile_brand/features/auth/ui/views/login_view.dart';
import 'package:nile_brand/features/auth/ui/views/reset_password.dart';
import 'package:nile_brand/features/category/ui/views/category_view.dart';
import 'package:nile_brand/features/home/ui/views/home_view.dart';
import 'package:nile_brand/features/my_cart/ui/views/my_cart_view.dart';

import 'package:nile_brand/features/profile/ui/profile_view.dart';
import 'package:nile_brand/features/start/ui/views/start_view.dart';
import 'package:nile_brand/features/track_order/ui/teack_order_view.dart';
import 'package:nile_brand/features/wish_list/ui/wish_list_view.dart';

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
        path: Routes.editProfile,
        builder: (context, state) => const EditProfile(),
      ),
      GoRoute(
        path: Routes.editPaymentMethods,
        builder: (context, state) => const PaymentMethods(),
      ),
      GoRoute(
        path: Routes.addFeedback,
        builder: (context, state) => const Feedback(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            AppNavigationBar(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.home,
                builder: (context, state) => const HomeView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.categoreis,
                builder: (context, state) => const CategoryView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.trackOrder,
                builder: (context, state) => const TrackOrderView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.wishList,
                builder: (context, state) => const WishListView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.myCart,
                builder: (context, state) => const MyCartView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.profile,
                builder: (context, state) => const ProfileView(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
