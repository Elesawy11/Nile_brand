import 'package:nile_brand/core/networking/dio_factory.dart';
import "package:nile_brand/core/routing/exports.dart" hide ProductModel;
import 'package:nile_brand/features/Admin/manage_categories/data/repo/manage_catg_repo.dart';
import 'package:nile_brand/features/Owner/create_brand/data/api/create_brand_api_services.dart';
import 'package:nile_brand/features/Owner/cuopon/data/api/cupons_source.dart';
import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopin_success.dart';
import 'package:nile_brand/features/Owner/cuopon/data/repo/cupons_repo.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/create_cupon.dart/create_cupon_cubit.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/get_cupons/cupon_cubit.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/update_cupon/update_cupon_cubit.dart';
import 'package:nile_brand/features/Owner/my_brand/data/api/my_brand_services.dart';
import 'package:nile_brand/features/Owner/my_brand/data/repo/update_brand_repo.dart';
import 'package:nile_brand/features/User/chatbot/presentation/views/chatbot_splash2.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/delete_product_from_my_cart_cubit/delete_product_from_my_cart_cubit.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/mycart_cubit/get_my_cart_cubit.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/update_quntity_of_product_cart_cubit/update_quntity_of_product_cart_cubit.dart';
import 'package:nile_brand/features/User/wish_list/presentation/cubits/add_product_to_wishlist_cubit/add_product_to_wishlist_cubit.dart';
import 'package:nile_brand/features/User/wish_list/presentation/cubits/delete_from_wishlist_cubit/delete_from_wishlist_cubit.dart';
import 'package:nile_brand/features/User/wish_list/presentation/cubits/get_wish_list_cubit/get_wish_list_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../features/Admin/manage_categories/data/api/manage_catg_source.dart';
import '../../features/Admin/manage_categories/views/manager/manage_catg_cubit.dart';
import '../../features/Owner/create_brand/data/repo/new_brand_repo.dart';
import '../../features/Owner/create_brand/presentation/manager/create_brand_cubit/create_brand_cubit.dart';
import '../../features/Owner/my_brand/presentation/manager/update_brand/update_brand_cubit.dart';
import '../../features/Owner/owner_helpers.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/add_feedback_cubit/add_feedback_cubit.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/get_my_profile_cubit/get_my_profile_cubit.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/update_password_cubit/update_password_cubit.dart';
import 'package:nile_brand/features/User/profile/presentation/views/edit_password.dart';

import '../../features/User/category/data/models/product_model.dart';
import '../../features/User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';

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
          builder: (context, state) {
            final args = state.extra as Map<String, dynamic>;
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => getIt.get<GetReviewsCubit>(),
                ),
                BlocProvider(
                  create: (context) => getIt.get<CreateReviewCubit>(),
                ),
                BlocProvider.value(
                  value: getIt.get<AddProductToCartCubit>(),
                ),
                BlocProvider.value(
                  value: getIt.get<AddProductToWishlistCubit>(),
                ),
                BlocProvider.value(
                  value: getIt.get<DeleteFromWishlistCubit>(),
                ),
                BlocProvider.value(
                  value: getIt.get<DeleteProductFromMyCartCubit>(),
                ),
              ],
              child: ProductDetailsView(
                product: args['product'] as ProductModel,
                isFavorite: args['isFavorite'] as ValueNotifier<bool>,
                isCarted: args['isCarted'] as ValueNotifier<bool>,
              ),
            );
          }),
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
                    BlocProvider(
                      create: (context) =>
                          getIt.get<AddProductToWishlistCubit>(),
                    ),
                    BlocProvider(
                      create: (context) => getIt.get<DeleteFromWishlistCubit>(),
                    ),
                    BlocProvider(
                      create: (context) => getIt.get<AddProductToCartCubit>(),
                    ),
                    BlocProvider(
                      create: (context) =>
                          getIt.get<DeleteProductFromMyCartCubit>(),
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
                  child: const CategoryView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.trackOrder,
                builder: (context, state) => OrdersListView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.wishList,
                builder: (context, state) => MultiBlocProvider(
                  providers: [
                    BlocProvider.value(
                      value: getIt.get<GetWishListCubit>()
                        ..getWishListProduct(),
                    ),
                    BlocProvider(
                      create: (context) => getIt.get<DeleteFromWishlistCubit>(),
                    ),
                    BlocProvider(
                      create: (context) => getIt.get<AddProductToCartCubit>(),
                    ),
                    BlocProvider(
                      create: (context) => getIt.get<GetMyCartCubit>(),
                    ),
                  ],
                  child: const WishListView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.myCart,
                builder: (context, state) => MultiBlocProvider(
                  providers: [
                    BlocProvider.value(
                      value: getIt.get<GetMyCartCubit>()..getMyCart(),
                    ),
                    BlocProvider(
                      create: (context) =>
                          getIt.get<DeleteProductFromMyCartCubit>(),
                    ),
                    BlocProvider(
                      create: (context) =>
                          getIt.get<UpdateQuntityOfProductCartCubit>(),
                    ),
                  ],
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
                builder: (context, state) => const OwnerHomeView(
                  brandId: "685691c46b03f8f3085f1915",
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
                builder: (context, state) => BlocProvider(
                  create: (context) => GetCuponsCubit(
                      CuponsRepo(CouponsSource(DioFactory.getDio())))
                    ..getAllCupons(),
                  child: const CuoponView(),
                ),
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
                      child: const MyBrand(),
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
          builder: (context, state) {
            final data = state.extra as String;
            return BrandDetailsView(productId: data,);
          }),
      GoRoute(
        path: Routes.brandProfile,
        builder: (context, state) => const BrandProfileView(),
      ),

      GoRoute(
        path: Routes.createCuopon,

        builder: (context, state) => BlocProvider(
          create: (context) =>
              CreateCuponCubit(CuponsRepo(CouponsSource(DioFactory.getDio()))),

        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => CreateCuponCubit(
                  CuponsRepo(CouponsSource(DioFactory.getDio()))),
            ),
            BlocProvider(
              create: (_) => GetCuponsCubit(
                  CuponsRepo(CouponsSource(DioFactory.getDio()))),
            ),
          ],

          child: const CreateCuoponView(),
        ),
      ),
      BlocProvider(
        create: (_) =>
            GetCuponsCubit(CuponsRepo(CouponsSource(DioFactory.getDio())))
              ,
      ),
    ],
    child: const CreateCuoponView(),
  ),
),

      GoRoute(
        path: Routes.updateCuopon,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              UpdateCuponCubit(CuponsRepo(CouponsSource(DioFactory.getDio()))),
          child: UpdateCuoponView(
            cupon: state.extra as CreateCuoponSuccess,
          ),
        ),
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
                builder: (context, state) {
                  return MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (_) => ManageCatgCubit(ManageCatgRepo(
                            manageCatgSource:
                                ManageCatgSource(DioFactory.getDio()))),
                      ),
                      BlocProvider(
                        create: (_) => getIt.get<GetCategoryCubit>(),
                      ),
                      BlocProvider(
                        create: (context) => getIt.get<GetSubCategorysCubit>(),
                      )
                    ],
                    child: const ManageCategoryView(),
                  );
                },
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
          builder: (context, state) {
            final product = state.extra as ProductModel;
            return ProductReviews(product: product);
          }),
      GoRoute(
          path: Routes.updateCategory,
          builder: (context, state) {
            final extra = state.extra as Map<String, dynamic>;
            final title = extra['title'] as String;
            final id = extra['id'] as String;
            return BlocProvider<ManageCatgCubit>(
                create: (context) => ManageCatgCubit(ManageCatgRepo(
                    manageCatgSource: ManageCatgSource(DioFactory.getDio()))),
                child: UpdateCreateCategSetting(
                  title: title,
                  id: id,
                ));
          }),
      GoRoute(
        path: Routes.updateSubCategory,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          final title = extra['title'] as String;
          final id = extra['id'] as String;

          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => ManageCatgCubit(ManageCatgRepo(
                    manageCatgSource: ManageCatgSource(DioFactory.getDio()))),
              ),
              BlocProvider(
                create: (_) =>
                    getIt.get<GetCategoryCubit>()..emitGetCategories(),
              ),
            ],
            child: UpdateCreateSubcatg(title: title, id: id),
          );
        },
      ),

      GoRoute(
        path: Routes.createSytemUser,
        builder: (context, state) => const CreateSystemUser(),
      ),
      GoRoute(
        path: Routes.updateSystemUser,
        builder: (context, state) => UpdateUserInfo(
          id: state.extra as String,
        ),
      )
    ],
  );
}
