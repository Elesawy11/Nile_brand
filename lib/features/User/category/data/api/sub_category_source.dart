import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
part 'sub_category_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class SubCategorySource {
  factory SubCategorySource(Dio dio) = _SubCategorySource;

  @GET('${ApiConstants.categories}/{id}/subcategories')
  Future<dynamic> getSubCategories(
    @Path('id') String id,
  );

  @GET('${ApiConstants.categories}/{id}')
  Future<dynamic> getCategoryProducts(
    @Path('id') String id,
  );
}
