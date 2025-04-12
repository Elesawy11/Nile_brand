import 'package:nile_brand/core/networking/api_service.dart';
import 'package:nile_brand/features/User/auth/data/models/signup_request_body.dart';
import 'package:nile_brand/features/User/auth/data/models/signup_response.dart';
import '../../../../../core/networking/signup_features/signup_error_handler.dart';
import '../../../../../core/networking/signup_features/signup_result.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<SignupResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return SignupResult.success(response);
    } catch (error) {
      return SignupResult.failure(SignupErrorHandler.handle(error));
    }
  }
}
