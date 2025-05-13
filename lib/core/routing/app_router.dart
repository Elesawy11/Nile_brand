import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:nile_brand/core/routing/routes.dart';
import "package:nile_brand/core/routing/exports.dart";
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/Admin/systm_users/views/update_user_info.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/google_sigin_cubit/google_signin_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/signup_cubit/sign_up_cubit.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/cubit/get_sub_category_product_cubit.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_sub_categories_cubit/get_sub_categorys_cubit.dart';

import '../../features/User/auth/presentation/cubits/reset_pass_cubit/reset_pass_cubit.dart';
import '../../features/User/auth/presentation/cubits/forgot_pass/forgot_pass_cubit.dart';
import '../../features/User/auth/presentation/cubits/login_cubit/login_cubit.dart';
import '../../features/User/auth/presentation/cubits/verify_code_cubit/verify_code_cubit.dart';
import '../../features/User/category/presentation/cubits/get_Category_products_Cubit/get_category_products_cubit.dart';
import '../../features/User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';

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
        builder: (ontext, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt.get<LoginCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt.get<GoogleSigninCubit>(),
            ),
          ],
          child: const LoginView(),
        ),
      ),
      GoRoute(
        path: Routes.forgotPassword,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt.get<ForgotPassCubit>(),
          child: const ForgotPasswordView(),
        ),
      ),
      GoRoute(
        path: Routes.resetPassword,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt.get<ResetPassCubit>(),
          child: const ResetPasswordView(),
        ),
      ),
      GoRoute(
        path: Routes.creatAccount,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt.get<SignUpCubit>(),
          child: const CreateAccountView(),
        ),
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
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt.get<VerifyCodeCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt.get<ForgotPassCubit>(),
            ),
          ],
          child: VerificationScreen(
            email: state.extra.toString(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.createBrand,
        builder: (context, state) => const CreateBrandView(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => CustomAppNavigationBar(
          navigationShell: navigationShell,
          isFloatingAction: true,
          items: appNavigationBarItems(
            list: UserConstants.userNavigationBarItemsImagesList,
          ),
        ),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.home,
                builder: (context, state) => BlocProvider(
                  create: (context) =>
                      getIt.get<GetCategoryCubit>()..emitGetCategories(),
                  child: const HomeView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.categoreis,
                builder: (context, state) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => getIt.get<GetCategoryCubit>(),
                    ),
                    BlocProvider(
                      create: (context) => getIt.get<GetSubCategorysCubit>(),
                    ),
                    BlocProvider(
                      create: (context) =>
                          getIt.get<GetCategoryProductsCubit>(),
                    ),
                    BlocProvider(
                      create: (context) =>
                          getIt.get<GetSubCategoryProductCubit>(),
                    ),
                  ],
                  child: const CategoryView(),
                ),
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
      // owner naviagation bar
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => CustomAppNavigationBar(
          navigationShell: navigationShell,
          items: appNavigationBarItems(
            list: OwnerConstants.userNavigationBarItemsImagesList,
          ),
          isFloatingAction: false,
        ),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.ownerHome,
                builder: (context, state) => const OwnerHomeView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.orderStatus,
                builder: (context, state) => const BrandOrdersStatusView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.addBrandProduct,
                builder: (context, state) => const AddBrandProductView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.dashboard,
                builder: (context, state) => const DashboardView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.cuopon,
                builder: (context, state) => const CuoponView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.myBrand,
                builder: (context, state) => const MyBrand(),
              ),
            ],
          ),
        ],
      ),

      GoRoute(
        path: Routes.brandDetails,
        builder: (context, state) => const BrandDetailsView(),
      ),
      GoRoute(
        path: Routes.brandProfile,
        builder: (context, state) => const BrandProfileView(),
      ),
      GoRoute(
        path: Routes.updateBrand,
        builder: (context, state) => const UpdateBrandView(),
      ),
      GoRoute(
        path: Routes.createCuopon,
        builder: (context, state) => const CreateCuoponView(),
      ),
      GoRoute(
        path: Routes.updateCuopon,
        builder: (context, state) => const UpdateCuoponView(),
      ),

      // admin navigation bar
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => CustomAppNavigationBar(
          navigationShell: navigationShell,
          items: appNavigationBarItems(
            list: AdminConstants.userNavigationBarItemsImagesList,
          ),
          isFloatingAction: false,
        ),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.allbrands,
                builder: (context, state) => const ManageBrandsView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.manageCategories,
                builder: (context, state) => const ManageCategoryView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.manageProducts,
                builder: (context, state) => const ManageProductsViews(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.manageUsers,
                builder: (context, state) => const SystemUsersView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.systemFeedback,
                builder: (context, state) => const SystemFeedbackView(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: Routes.productReviews,
        builder: (context, state) => const ProductReviews(),
      ),
      GoRoute(
        path: Routes.updateCategory,
        builder: (context, state) => UpdateCreateCategSetting(
          title: state.extra as String,
        ),
      ),
      GoRoute(
        path: Routes.updateSubCategory,
        builder: (context, state) => UpdateCreateSubcatg(
          title: state.extra as String,
        ),
      ),
      GoRoute(
        path: Routes.createSytemUser,
        builder: (context, state) => const CreateSystemUser(),
      ),
      GoRoute(
        path: Routes.updateSystemUser,
        builder: (context, state) => const UpdateUserInfo(),
      )
    ],
  );
}
