import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/User/profile/data/model/feedback_model.dart';
import 'package:nile_brand/features/User/profile/data/model/my_profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/networking/api_error_handler.dart';
import '../../../auth/data/models/login_response.dart';
import '../api/my_profile_api_source.dart';

class MyProfileRepoImpl {
  final MyProfileApiSource _repo;

  MyProfileRepoImpl(this._repo);
  final String token =
      'Bearer ${getIt.get<SharedPreferences>().getString('token')}';
  // method to get the user profile
  Future<ApiResult<MyProfileModel>> getMyProfile() async {
    final String token =
        'Bearer ${getIt.get<SharedPreferences>().getString('token')}';
    try {
      final response = await _repo.getMyProfile(token);
      return ApiResult.success(MyProfileModel.fromJson(response['data']));
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  // method to update the user password
  Future<ApiResult<LoginResponse>> updatePassword(
    String currentPassword,
    String password,
    String confirmPassword,
  ) async {
    try {
      final response = await _repo.updatePassword(
        token,
        currentPassword,
        password,
        confirmPassword,
      );
      return ApiResult.success(LoginResponse.fromJson(response));
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<FeedbackModel>> addFeedBack(
      {required String comment, required int rating}) async {
    try {
      final response = await _repo.addFeedback(token, comment, rating);
      return ApiResult.success(FeedbackModel.fromJson(response['data']));
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
