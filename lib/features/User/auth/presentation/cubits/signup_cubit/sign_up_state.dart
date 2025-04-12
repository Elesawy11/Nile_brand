import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nile_brand/features/User/auth/data/models/signup_response.dart';
part 'sign_up_state.freezed.dart';

@Freezed()
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.signUpLoading() = SignUpLoading;
  const factory SignUpState.signUpSuccess(SignupResponse data) = SignUpSuccess;
  const factory SignUpState.signUpError({required String error}) = SignUpError;
}
