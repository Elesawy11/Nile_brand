import 'package:nile_brand/core/networking/api_service.dart';
import 'package:nile_brand/core/networking/signup_features/signup_result.dart';
import 'package:nile_brand/features/User/auth/data/models/forgot_pass_response.dart';
import 'package:nile_brand/features/User/auth/data/models/frogot_pass_request.dart';
import '../../../../../core/networking/signup_features/signup_error_handler.dart';

class ForgotPassRepo {
  final ApiService _apiService;
  ForgotPassRepo(this._apiService);
  Future<SignupResult<ForgotPassResponse>> forgotPassword(
      FrogotPassRequest forgotPassRequest) async {
    try {
      final response = await _apiService.forgotPassword(forgotPassRequest);
      return SignupResult.success(response);
    } catch (error) {
      return SignupResult.failure(SignupErrorHandler.handle(error));
    }
  }
}
