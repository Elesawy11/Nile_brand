import 'package:nile_brand/core/networking/api_error_handler.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/core/networking/api_service.dart';
import 'package:nile_brand/features/User/auth/data/models/forgot_pass_response.dart';
import 'package:nile_brand/features/User/auth/data/models/frogot_pass_request.dart';

class ForgotPassRepo {
  final ApiService _apiService;
  ForgotPassRepo(this._apiService);
  Future<ApiResult<ForgotPassResponse>> forgotPassword(
      FrogotPassRequest forgotPassRequest) async {
    try {
      final response = await _apiService.forgotPassword(forgotPassRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
