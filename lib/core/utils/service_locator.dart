import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nile_brand/core/networking/api_service.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/features/User/auth/data/repo/google_auth_repo.dart';
import 'package:nile_brand/features/User/auth/data/repo/signup_repo.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/forgot_pass/forgot_pass_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/google_sigin_cubit/google_signin_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/signup_cubit/sign_up_cubit.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:nile_brand/features/User/home/data/data_source/category_remote_data_source.dart';
import 'package:nile_brand/features/User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';
import 'package:nile_brand/features/User/chatbot/presentation/cubits/cubit/chatbot_scroll_cubit.dart';
import 'package:nile_brand/features/User/profile/data/api/my_profile_api_source.dart';
import 'package:nile_brand/features/User/profile/data/repo_impl/my_profile_repo_impl.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/add_feedback_cubit/add_feedback_cubit.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/get_my_profile_cubit/get_my_profile_cubit.dart';
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
  getIt.registerLazySingleton(() => CategoryRepoImpl(categorySource));
  getIt.registerLazySingleton(() => GetCategoryCubit(getIt.get<CategoryRepoImpl>()));
  // sub category Features
  getIt.registerLazySingleton(() => SubCategorySource(dio));
  getIt.registerLazySingleton(() => SubCategoryRepoImpl(getIt.get()));
  getIt.registerLazySingleton(() => GetSubCategorysCubit(getIt.get()));
  // get sub category products Features
  // getIt.registerLazySingleton(() => GetCategoryProductsCubit(getIt.get()));
  // get product cubit Features
  getIt.registerLazySingleton(() => GetProductsCubit(getIt.get()));
  // myProfile Features
  getIt.registerLazySingleton(() => MyProfileApiSource(dio));
  getIt.registerLazySingleton(() => MyProfileRepoImpl(getIt.get()));
  getIt.registerLazySingleton(() => GetMyProfileCubit(getIt.get()));
  // update password Features
  getIt.registerFactory(
      () => UpdatePasswordCubit(getIt.get<MyProfileRepoImpl>()));

  // add feedback features
  getIt.registerFactory(() => AddFeedbackCubit(getIt.get()));
  // Chatbot Features
  getIt.registerLazySingleton(() => ChatbotScrollCubit());
}
