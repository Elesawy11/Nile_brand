import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/my_profile_model.dart';
part 'get_my_profile_state.freezed.dart';

@freezed
class GetMyProfileState with _$GetMyProfileState {
  const factory GetMyProfileState.initial() = _Initial;
  const factory GetMyProfileState.getMyProfileLoading() = GetMyProfileLoading;
  const factory GetMyProfileState.getMyProfileSuccess(
      {required MyProfileModel myProfile}) = GetMyProfileSuccess;
  const factory GetMyProfileState.getMyProfileError({required String error}) =
      GetMyProfileError;
}
