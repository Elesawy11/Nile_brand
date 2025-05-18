import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../auth/data/models/login_response.dart';
part 'update_password_state.freezed.dart';
@freezed
class UpdatePasswordState with _$UpdatePasswordState {
  const factory UpdatePasswordState.initial() = _Initial;
  const factory UpdatePasswordState.updatePasswordLoading() = UpdatePasswordLoading;
  const factory UpdatePasswordState.updatePasswordSuccess({required LoginResponse response}) = UpdatePasswordSuccess;
  const factory UpdatePasswordState.updatePasswordError({required String error}) = UpdatePasswordError;
}
