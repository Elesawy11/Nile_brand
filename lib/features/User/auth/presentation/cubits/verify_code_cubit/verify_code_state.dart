import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nile_brand/features/User/auth/data/models/forgot_pass_response.dart';
part 'verify_code_state.freezed.dart';

@freezed
class VerifyCodeState with _$VerifyCodeState {
  const factory VerifyCodeState.initial() = _Initial;
  const factory VerifyCodeState.verifyLoading() = VerifyLoading;
  const factory VerifyCodeState.verifySuccess(ForgotPassResponse forgotPass) =
      VerifySuccess;
  const factory VerifyCodeState.verifyError({required String error}) =
      VerifyError;
}
