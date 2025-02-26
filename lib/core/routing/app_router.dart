import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/app_navigation_bar.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/features/User/auth/presentation/views/verification_screen.dart';
import 'package:nile_brand/features/User/chatbot/presentation/views/chatbot_onboarding_view.dart';
import 'package:nile_brand/features/User/chatbot/presentation/views/chatbot_view.dart';

import 'package:nile_brand/features/User/profile/presentation/edit_profile.dart';
import 'package:nile_brand/features/User/profile/presentation/feedback.dart';
// import 'package:nile_brand/features/profile/ui/feedback.dart';
import 'package:nile_brand/features/User/profile/presentation/payment_methods.dart';

import 'package:nile_brand/features/User/auth/presentation/views/create_account.dart';
import 'package:nile_brand/features/User/auth/presentation/views/forgot_password_view.dart';
import 'package:nile_brand/features/User/auth/presentation/views/login_view.dart';
import 'package:nile_brand/features/User/auth/presentation/views/reset_password.dart';
import 'package:nile_brand/features/User/category/presentation/views/category_view.dart';
import 'package:nile_brand/features/User/home/presentation/views/home_view.dart';
import 'package:nile_brand/features/User/my_cart/presentation/views/my_cart_view.dart';

import 'package:nile_brand/features/User/profile/presentation/profile_view.dart';
import 'package:nile_brand/features/start/ui/views/start_view.dart';
import 'package:nile_brand/features/User/track_order/presentation/views/track_order_view.dart';
import 'package:nile_brand/features/User/wish_list/presentation/wish_list_view.dart';

abstract class AppRouter {
  static final rootNavigatotKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    navigatorKey: rootNavigatotKey,
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
        builder: (context, state) => const FeedbackView(),
      ),
      GoRoute(
        path: Routes.chatbot,
        builder: (context, state) => const ChatbotView(),
      ),
      GoRoute(
        path: Routes.chatbotOnboarding,
        builder: (context, state) => const ChatbotOnboardingView(),
      ),
      GoRoute(
        path: Routes.verificationScreen,
        builder: (context, state) => const VerificationScreen(),
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
