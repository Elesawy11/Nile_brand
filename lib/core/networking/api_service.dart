import 'package:dio/dio.dart';
import 'package:nile_brand/features/User/auth/data/models/forgot_pass_response.dart';
import 'package:nile_brand/features/User/auth/data/models/login_request_body.dart';
import 'package:nile_brand/features/User/auth/data/models/login_response.dart';
import 'package:nile_brand/features/User/auth/data/models/reset_pass_request.dart';
import 'package:nile_brand/features/User/auth/data/models/signup_request_body.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/User/auth/data/models/frogot_pass_request.dart';
import '../../features/User/auth/data/models/signup_response.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.forgotPassword)
  Future<ForgotPassResponse> forgotPassword(
    @Body() FrogotPassRequest forgotPassRequest,
  );

  @POST(ApiConstants.verifyCode)
  Future<ForgotPassResponse> verifyPassword(
    @Body() Map<String, dynamic> body,
    @Header('Authorization') String? token,
  );

  @PUT(ApiConstants.resetPassword)
  Future<ForgotPassResponse> resetPassword(
    @Body() ResetPassRequest resetPassRequest,
    @Header('Authorization') String? token,
  );
}
