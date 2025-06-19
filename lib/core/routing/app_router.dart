import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/networking/api_constants.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/routing/routes.dart';
import "package:nile_brand/core/routing/exports.dart";
import 'package:nile_brand/core/utils/service_locator.dart';

import 'package:nile_brand/features/Owner/create_brand/data/api/create_brand_api_services.dart';
import 'package:nile_brand/features/Owner/my_brand/data/api/my_brand_services.dart';
import 'package:nile_brand/features/Owner/my_brand/data/repo/update_brand_repo.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/create_review_cubit/create_review_cubit.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_reviews_cubit/get_reviews_cubit.dart';
import 'package:nile_brand/features/User/chat/presentation/views/user_owner_chat.dart';
import 'package:nile_brand/features/User/chatbot/presentation/views/chatbot_splash2.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/cubit/get_my_cart_cubit.dart';
import 'package:nile_brand/features/User/wish_list/presentation/cubits/get_wish_list_cubit/get_wish_list_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/Owner/create_brand/data/repo/new_brand_repo.dart';
import '../../features/Owner/create_brand/presentation/manager/create_brand_cubit/create_brand_cubit.dart';
import '../../features/Owner/my_brand/presentation/manager/update_brand/update_brand_cubit.dart';
import '../../features/Owner/owner_helpers.dart';

import 'package:nile_brand/features/User/category/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:nile_brand/features/User/chatbot/presentation/views/chatbot_splash2.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/add_feedback_cubit/add_feedback_cubit.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/get_my_profile_cubit/get_my_profile_cubit.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/update_password_cubit/update_password_cubit.dart';
import 'package:nile_brand/features/User/profile/presentation/views/edit_password.dart';

abstract class AppRouter {
  static final rootNavigatotKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    navigatorKey: rootNavigatotKey,
    redirect: (context, state) async {
      final token = getIt.get<SharedPreferences>().get('token');
      if (token != null && state.matchedLocation == '/login') {
        return '/home';
      }
      // If no token and trying to access home, redirect to login
      if (token == null && state.matchedLocation == '/home') {
        return '/login';
      }
      return null;
    },
    routes: [
      GoRoute(
        path: Routes.start,
        builder: (context, state) => const StartView(),
      ),
      GoRoute(
        path: Routes.chatBotSplash2,
        builder: (context, state) => const ChatbotSplash2(),
      ),
      GoRoute(
        path: Routes.chatOwnerAndUser,
        builder: (context, state) => const UserOwnerChat(),
      ),
      GoRoute(
        path: Routes.productDetails,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt.get<GetReviewsCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt.get<CreateReviewCubit>(),
            ),
          ],
          child: ProductDetailsView(
            product: state.extra as ProductModel,
          ),
        ),
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
        name: 'updateBrand',
        path: Routes.updateBrand,
        builder: (context, state) => FutureBuilder<String?>(
          future: BrandPrefs.getToken(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }

            final dio = DioFactory.getDio()
              ..options.headers = {
                "Content-Type": "multipart/form-data",
                "X-Requested-With": "XMLHttpRequest",
                "accept": "*/*",
                "Authorization": "Bearer ${snapshot.data}",
              };

            return BlocProvider(
              create: (context) => UpdateBrandCubit(
                UpdateBrandRepoImpl(BrandDetailsSource(dio)),
              ),
              child: const UpdateBrandBody(),
            );
          },
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
          builder: (context, state) {
            final args = state.extra as Map<String, dynamic>;
            return EditProfile(
              name: args['name']!,
              imageUrl: args['imageUrl']!,
            );
          }),
      GoRoute(
        path: Routes.editPassword,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt.get<UpdatePasswordCubit>(),
          child: const EditPassword(),
        ),
      ),
      GoRoute(
        path: Routes.editPaymentMethods,
        builder: (context, state) => const PaymentMethods(),
      ),
      GoRoute(
        path: Routes.addFeedback,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt.get<AddFeedbackCubit>(),
          child: const FeedbackView(),
        ),
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
        builder: (context, state) => FutureBuilder<String?>(
          future: BrandPrefs.getToken(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }

            final dio = DioFactory.getDio()
              ..options.headers = {
                "Content-Type": "multipart/form-data",
                "X-Requested-With": "XMLHttpRequest",
                "accept": "*/*",
                "Authorization": "Bearer ${snapshot.data}",
              };

            return BlocProvider(
              create: (context) => CreateBrandCubit(
                CreateBrandRepoImpl(BrandInfoSource(dio)),
              ),
              child: const CreateBrandView(),
            );
          },
        ),
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
                builder: (context, state) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) =>
                          getIt.get<GetProductsCubit>()..getProducts(),
                    ),
                    BlocProvider(
                      create: (context) =>
                          getIt.get<GetCategoryCubit>()..emitGetCategories(),
                    ),
                  ],
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
                      create: (context) =>
                          getIt.get<GetSubCategorysCubit>()..getSubCategories(),
                    ),
                    BlocProvider(
                      create: (context) => getIt.get<GetProductsCubit>(),
                    ),
                  ],
                  child: CategoryView(),
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
                builder: (context, state) => BlocProvider(
                  create: (context) =>
                      getIt.get<GetWishListCubit>()..getWishListProduct(),
                  child: const WishListView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.myCart,
                builder: (context, state) => BlocProvider(
                  create: (context) => getIt.get<GetMyCartCubit>(),
                  child: const MyCartView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.profile,
                builder: (context, state) => BlocProvider(
                  create: (context) =>
                      getIt.get<GetMyProfileCubit>()..getMyProfile(),
                  child: const ProfileView(),
                ),
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
                builder: (context, state) => OwnerHomeView(
                  brandId: state.extra as String,
                ),
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
                builder: (context, state) => FutureBuilder<String?>(
                  future: BrandPrefs.getToken(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Scaffold(
                        body: Center(child: CircularProgressIndicator()),
                      );
                    }

                    final dio = DioFactory.getDio()
                      ..options.headers = {
                        "Content-Type": "multipart/form-data",
                        "X-Requested-With": "XMLHttpRequest",
                        "accept": "*/*",
                        "Authorization": "Bearer ${snapshot.data}",
                      };

                    return BlocProvider(
                      create: (context) => UpdateBrandCubit(
                        UpdateBrandRepoImpl(BrandDetailsSource(dio)),
                      ),
                      child: MyBrand(),
                    );
                  },
                ),
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
