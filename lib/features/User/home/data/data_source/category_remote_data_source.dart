import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
part 'category_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeRemoteDataSource {
  factory HomeRemoteDataSource(Dio dio) = _HomeRemoteDataSource;

  @GET(ApiConstants.categories)
  Future<dynamic> getCategories({
    @Query('page') int page = 1,
    @Query('limit') int limit = 3,
  });
}
