import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_sign_out_state.freezed.dart';

@freezed
class GoogleSignOutState with _$GoogleSignOutState {
  const factory GoogleSignOutState.initial() = _Initial;
  const factory GoogleSignOutState.signoutLoading() = SignoutLoading;
  const factory GoogleSignOutState.signoutSuccess() = SignoutSuccess;
  const factory GoogleSignOutState.signoutError({required String error}) =
      SignoutError;
}
