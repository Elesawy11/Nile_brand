import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/core/networking/api_service.dart';
import 'package:nile_brand/features/User/auth/data/models/signup_request_body.dart';
import 'package:nile_brand/features/User/auth/data/models/signup_response.dart';

import '../../../../../core/networking/api_error_handler.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
