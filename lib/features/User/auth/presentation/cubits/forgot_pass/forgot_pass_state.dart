import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nile_brand/features/User/auth/data/models/forgot_pass_response.dart';

part 'forgot_pass_state.freezed.dart';

@freezed
class ForgotPassState with _$ForgotPassState {
  const factory ForgotPassState.initial() = _Initial;
  const factory ForgotPassState.forgotLoading() = ForgotLoading;
  const factory ForgotPassState.forgotSuccess(ForgotPassResponse forgotPass) =
      ForgotSuccess;
  const factory ForgotPassState.forgotError({required String error}) =
      ForgotError;
}
