import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
part 'sub_category_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class SubCategorySource {
  factory SubCategorySource(Dio dio) = _SubCategorySource;

  @GET(ApiConstants.subcategories)
  Future<dynamic> getSubCategories({
    @Query('limit') int limit = 50000,
  });

  @GET(ApiConstants.products)
  Future<dynamic> getProducts({
    @Query('limit') int limit = 50000,
  });

  @GET('${ApiConstants.products}/{id}/${ApiConstants.reviews}')
  Future<dynamic> getReviews(
    @Path('id') String id, {
    @Query('limit') int limit = 50000,
  });

  @POST('${ApiConstants.products}/{id}/${ApiConstants.reviews}')
  Future<dynamic> createReview(
    @Path('id') String id,
    @Body() Map<String, dynamic> body,
    @Header("Authorization") String token,

  );
}
