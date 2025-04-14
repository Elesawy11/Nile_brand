import 'package:nile_brand/core/networking/api_service.dart';
import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../models/forgot_pass_response.dart';
import '../models/reset_pass_request.dart';

class ResetPassRepo {
  final ApiService _apiService;
  ResetPassRepo(this._apiService);

  Future<ApiResult<ForgotPassResponse>> resetPassword(
      {required ResetPassRequest resetPassRequest,
      required String token}) async {
    try {
      final response =
          await _apiService.resetPassword(resetPassRequest, 'Bearer $token');
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
