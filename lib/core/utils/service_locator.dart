import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nile_brand/core/networking/api_service.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/features/User/auth/data/repo/signup_repo.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/forgot_pass/forgot_pass_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/signup_cubit/sign_up_cubit.dart';
import 'package:nile_brand/features/User/chatbot/presentation/cubits/cubit/chatbot_scroll_cubit.dart';
import '../../features/User/auth/data/repo/forgot_pass_repo.dart';
import '../../features/User/auth/data/repo/login_repo.dart';
import '../../features/User/auth/data/repo/verify_code_repo.dart';
import '../../features/User/auth/presentation/cubits/login_cubit/login_cubit.dart';
import '../../features/User/auth/presentation/cubits/verify_code_cubit/verify_code_cubit.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  Dio dio = DioFactory.getDio();
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
  // Chatbot Features
  getIt.registerLazySingleton(() => ChatbotScrollCubit());
}
