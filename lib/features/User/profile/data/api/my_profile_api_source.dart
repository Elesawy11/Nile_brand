import 'package:dio/dio.dart';
import 'package:nile_brand/features/User/auth/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/networking/api_constants.dart';
part 'my_profile_api_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class MyProfileApiSource {
  factory MyProfileApiSource(Dio dio) = _MyProfileApiSource;

  @GET(ApiConstants.myProfile)
  Future<dynamic> getMyProfile(
    @Header("Authorization") String token,
  );

  @PUT(ApiConstants.updatePassword)
  Future<dynamic> updatePassword(
    @Header("Authorization") String token,
    @Field("currentPassword") String currentPassword,
    @Field("password") String password,
    @Field("confirmPassword") String confirmPassword,
  );
}
