import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nile_brand/core/networking/api_service.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/features/User/auth/data/repo/signup_repo.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/signup_cubit/sign_up_cubit.dart';
import 'package:nile_brand/features/User/chatbot/presentation/cubits/cubit/chatbot_scroll_cubit.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton(() => ApiService(dio));
  getIt.registerLazySingleton(() => SignUpRepo(getIt.get()));
  getIt.registerFactory(() => SignUpCubit(getIt.get()));
  getIt.registerLazySingleton(() => ChatbotScrollCubit());
}
