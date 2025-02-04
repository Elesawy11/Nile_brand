import 'package:get_it/get_it.dart';
import 'package:nile_brand/features/chatbot/ui/cubits/cubit/chatbot_scroll_cubit.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  getIt.registerLazySingleton(() => ChatbotScrollCubit());
}
