import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nile_brand/core/networking/api_service.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/utils/stripe_service.dart';
import 'package:nile_brand/features/User/auth/data/repo/google_auth_repo.dart';
import 'package:nile_brand/features/User/auth/data/repo/signup_repo.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/forgot_pass/forgot_pass_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/google_sigin_cubit/google_signin_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/signup_cubit/sign_up_cubit.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/create_review_cubit/create_review_cubit.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_reviews_cubit/get_reviews_cubit.dart';
import 'package:nile_brand/features/User/home/data/data_source/category_remote_data_source.dart';
import 'package:nile_brand/features/User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';
import 'package:nile_brand/features/User/chatbot/presentation/cubits/cubit/chatbot_scroll_cubit.dart';
import 'package:nile_brand/features/User/my_cart/data/repo/my_cart_repo_impl.dart';
import 'package:nile_brand/features/User/my_cart/data/source/my_cart_source.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/create_order_cubit/create_order_cubit.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/delete_product_from_my_cart_cubit/delete_product_from_my_cart_cubit.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/mycart_cubit/get_my_cart_cubit.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/update_quntity_of_product_cart_cubit/update_quntity_of_product_cart_cubit.dart';
import 'package:nile_brand/features/User/profile/data/api/my_profile_api_source.dart';
import 'package:nile_brand/features/User/profile/data/repo_impl/my_profile_repo_impl.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/add_feedback_cubit/add_feedback_cubit.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/get_my_profile_cubit/get_my_profile_cubit.dart';
import 'package:nile_brand/features/User/track_order/data/repo/get_order_repo_impl.dart';
import 'package:nile_brand/features/User/track_order/data/source/order_source.dart';
import 'package:nile_brand/features/User/track_order/presentation/cubits/cubit/get_orders_cubit.dart';
import 'package:nile_brand/features/User/wish_list/data/api/wish_list_source.dart';
import 'package:nile_brand/features/User/wish_list/data/repo_impl/wish_list_repo_impl.dart';
import 'package:nile_brand/features/User/wish_list/presentation/cubits/add_product_to_wishlist_cubit/add_product_to_wishlist_cubit.dart';
import 'package:nile_brand/features/User/wish_list/presentation/cubits/delete_from_wishlist_cubit/delete_from_wishlist_cubit.dart';
import 'package:nile_brand/features/User/wish_list/presentation/cubits/get_wish_list_cubit/get_wish_list_cubit.dart';
import 'package:nile_brand/features/stripe/data/repo/checkout_repo_impl.dart';
import 'package:nile_brand/features/stripe/presentation/views/cubits/cubit/payment_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../features/User/auth/data/repo/forgot_pass_repo.dart';
import '../../features/User/auth/data/repo/login_repo.dart';
import '../../features/User/auth/data/repo/reset_pass_repo.dart';
import '../../features/User/auth/data/repo/verify_code_repo.dart';
import '../../features/User/auth/presentation/cubits/reset_pass_cubit/reset_pass_cubit.dart';
import '../../features/User/auth/presentation/cubits/login_cubit/login_cubit.dart';
import '../../features/User/auth/presentation/cubits/verify_code_cubit/verify_code_cubit.dart';
import '../../features/User/category/data/api/sub_category_source.dart';
import '../../features/User/category/data/repo/sub_category_repo_impl.dart';
import '../../features/User/category/presentation/cubits/get_sub_categories_cubit/get_sub_categorys_cubit.dart';
import '../../features/User/home/data/repo/category_repo_impl.dart';

import '../../features/User/home/domain/repo/home_repo.dart';

import '../../features/User/my_cart/presentation/cubits/add_product_to_cart_cubit/add_product_to_cart_cubit.dart';

import '../../features/User/profile/presentation/cubits/update_password_cubit/update_password_cubit.dart';

final getIt = GetIt.instance;

Future<void> serviceLocator() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerFactory(() => sharedPreferences);
  Dio dio = DioFactory.getDio();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();
  getIt.registerLazySingleton(() => ApiService(dio));
  // Signup Features
  getIt.registerLazySingleton(() => SignUpRepo(getIt.get()));
  getIt.registerFactory(() => SignUpCubit(getIt.get()));
  // login Features
  getIt.registerLazySingleton(() => LoginRepo(getIt.get()));
  getIt.registerFactory(() => LoginCubit(getIt.get()));
  // forgot password Features
  getIt.registerLazySingleton(() => ForgotPassRepo(getIt.get()));
  getIt.registerFactory(() => ForgotPassCubit(getIt.get()));
  // Verify Code Features
  getIt.registerLazySingleton(() => VerifyCodeRepo(getIt.get()));
  getIt.registerFactory(() => VerifyCodeCubit(getIt.get()));
  // Reset Password Features
  getIt.registerLazySingleton(() => ResetPassRepo(getIt.get()));
  getIt.registerFactory(() => ResetPassCubit(getIt.get()));
  // Google Signin Features
  getIt.registerLazySingleton(() => GoogleAuthRepo(firebaseAuth, googleSignIn));
  getIt.registerFactory(() => GoogleSigninCubit(getIt.get()));
  // category Features
  HomeRemoteDataSource categorySource = HomeRemoteDataSource(dio);

  getIt.registerLazySingleton<HomeRepo>(() => CategoryRepoImpl(categorySource));
  // getIt.registerLazySingleton(
  //     () => GetCategoryCubit(getIt.get<HomeRepo>()));

  getIt.registerLazySingleton(() => CategoryRepoImpl(categorySource));
  getIt.registerFactory(() => GetCategoryCubit(getIt.get()));

  // sub category Features
  getIt.registerLazySingleton(() => SubCategorySource(dio));
  getIt.registerLazySingleton(() => SubCategoryRepoImpl(getIt.get()));
  getIt.registerFactory(() => GetSubCategorysCubit(getIt.get()));
  // get sub category products Features
  // getIt.registerLazySingleton(() => GetCategoryProductsCubit(getIt.get()));
  // get product cubit Features
  getIt.registerFactory(() => GetProductsCubit(getIt.get()));
  // myProfile Features
  getIt.registerLazySingleton(() => MyProfileApiSource(dio));
  getIt.registerLazySingleton(() => MyProfileRepoImpl(getIt.get()));
  getIt.registerLazySingleton(() => GetMyProfileCubit(getIt.get()));
  // update password Features
  getIt.registerFactory(
      () => UpdatePasswordCubit(getIt.get<MyProfileRepoImpl>()));

  // add feedback features
  getIt.registerFactory(() => AddFeedbackCubit(getIt.get()));

  // get reviews Features
  getIt.registerFactory(() => GetReviewsCubit(getIt.get()));
  // create review cubit
  getIt.registerFactory(() => CreateReviewCubit(getIt.get()));

  // wishList Features

  getIt.registerLazySingleton(() => WishListSource(dio));
  getIt.registerLazySingleton(() => WishListRepoImpl(getIt.get()));
  getIt.registerLazySingleton(() => GetWishListCubit(getIt.get()));
  getIt.registerLazySingleton(() => AddProductToWishlistCubit(getIt.get()));
  getIt.registerLazySingleton(() => DeleteFromWishlistCubit(getIt.get()));

  // MyCart Features
  getIt.registerLazySingleton(() => MyCartSource(dio));
  getIt.registerLazySingleton(() => MyCartRepoImpl(getIt.get()));
  getIt.registerLazySingleton(() => GetMyCartCubit(getIt.get()));
  getIt.registerLazySingleton(() => AddProductToCartCubit(getIt.get()));
  getIt.registerLazySingleton(() => DeleteProductFromMyCartCubit(getIt.get()));
  getIt.registerFactory(() => UpdateQuntityOfProductCartCubit(getIt.get()));

  getIt.registerFactory(() => CreateOrderCubit(getIt.get()));
  getIt.registerLazySingleton(() => GetOrderSource(dio));
  getIt.registerLazySingleton(() => GetOrderRepoImpl(getIt.get()));
  getIt.registerFactory(() => GetOrdersCubit(getIt.get()));
  getIt.registerLazySingleton(() => StripeService());
  // getIt.registerLazySingleton(() => CheckoutRepoImpl(service: getIt.get()));
  getIt.registerLazySingleton(() => CheckoutRepoImpl(service: getIt.get()));
  getIt.registerLazySingleton(() => PaymentCubit( getIt.get()));


  // Chatbot Features
  getIt.registerLazySingleton(() => ChatbotScrollCubit());
}
