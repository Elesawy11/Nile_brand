import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'google_signin_state.freezed.dart';

@freezed
class GoogleSigninState with _$GoogleSigninState {
  const factory GoogleSigninState.initial() = _Initial;
  const factory GoogleSigninState.googleLoading() = GoogleLoading;
  const factory GoogleSigninState.googleSuccess({required User user}) =
      GoogleSuccess;
  const factory GoogleSigninState.googleError({required String error}) =
      GoogleError;
}
