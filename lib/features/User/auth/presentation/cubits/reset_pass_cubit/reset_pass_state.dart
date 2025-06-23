import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/forgot_pass_response.dart';
part 'reset_pass_state.freezed.dart';

@freezed
class ResetPassState with _$ResetPassState {
  const factory ResetPassState.initial() = _Initial;
  const factory ResetPassState.resetLoading() = ResetLoading;
  const factory ResetPassState.resetSuccess(ForgotPassResponse data) =
      ResetSuccess;
  const factory ResetPassState.resetError({required String error}) = ResetError;
}
