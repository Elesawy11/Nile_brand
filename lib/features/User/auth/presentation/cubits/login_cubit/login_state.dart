import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/login_response.dart';
part 'login_state.freezed.dart';

@Freezed()
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginSuccess(LoginResponse loginResponse) =
      LoginSuccess;
  const factory LoginState.loginError({required String error}) = LoginError;
}
