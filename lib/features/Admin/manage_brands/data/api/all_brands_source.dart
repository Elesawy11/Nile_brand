import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/networking/api_constants.dart';

part 'all_brands_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AllBrandsSource {
  factory AllBrandsSource(Dio dio, {String baseUrl}) =
      _AllBrandsSource;

  @GET("brands")
  Future<dynamic> getSystemBrands(@Header('Authorization') String? token);

  @DELETE("brands/{id}")
  Future<void> deletBrand(@Path("id") String id,@Header('Authorization') String? token);

}
