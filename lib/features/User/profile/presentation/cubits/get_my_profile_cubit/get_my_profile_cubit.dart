import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/profile/data/repo_impl/my_profile_repo_impl.dart';

import 'get_my_profile_state.dart';

class GetMyProfileCubit extends Cubit<GetMyProfileState> {
  final MyProfileRepoImpl _repo;
  GetMyProfileCubit(this._repo) : super(const GetMyProfileState.initial());
  Future<void> getMyProfile() async {
    emit(const GetMyProfileState.getMyProfileLoading());
    final response = await _repo.getMyProfile();

    switch (response) {
      case Success():
        emit(GetMyProfileState.getMyProfileSuccess(myProfile: response.data));
        break;
      case Failure():
        emit(
          GetMyProfileState.getMyProfileError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                "Unknown error",
          ),
        );
    }
  }
}
