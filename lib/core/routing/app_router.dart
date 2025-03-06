import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/features/Owner/owner_home/presentation/views/owner_home_view.dart';
import 'package:nile_brand/features/User/constants.dart';
import 'package:nile_brand/core/widgets/custom_app_navigation_bar.dart';
import 'package:nile_brand/core/routing/routes.dart';
import "package:nile_brand/core/routing/exports.dart";
import 'package:nile_brand/features/Owner/create_brand/presentation/views/create_brand_view.dart';

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
      GoRoute(
        path: Routes.createBrand,
        builder: (context, state) => const CreateBrandView(),
      ),
      GoRoute(
        path: Routes.ownerHome,
        builder: (context, state) => const OwnerHomeView(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => CustomAppNavigationBar(
          navigationShell: navigationShell,
          isFloatingAction: true,
          items: UserConstants.userAppNavigationBarItems(),
        ),
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
