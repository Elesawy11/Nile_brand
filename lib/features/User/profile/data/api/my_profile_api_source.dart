import 'package:dio/dio.dart';
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

  @POST(ApiConstants.feedback)
  Future<dynamic> addFeedback(
    @Header("Authorization") String token,
    @Field("comment") String comment,
    @Field("rating") int rating,
  );
}
