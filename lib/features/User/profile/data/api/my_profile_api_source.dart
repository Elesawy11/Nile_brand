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
}
