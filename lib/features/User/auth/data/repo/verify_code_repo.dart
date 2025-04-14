import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/core/networking/api_service.dart';
import 'package:nile_brand/features/User/auth/data/models/forgot_pass_response.dart';
import '../../../../../core/networking/api_error_handler.dart';

class VerifyCodeRepo {
  final ApiService _apiService;
  VerifyCodeRepo(this._apiService);

  Future<ApiResult<ForgotPassResponse>> verifyCode(
      {required Map<String, dynamic> body, required String token}) async {
    try {
      final response = await _apiService.verifyPassword(body, 'Bearer $token');
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
