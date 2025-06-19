import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/networking/api_constants.dart';
part 'my_cart_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class MyCartSource {
  factory MyCartSource(Dio dio, {String? baseUrl}) = _MyCartSource;

  @GET(ApiConstants.carts)
  Future<dynamic> getMyCart(
    @Header('Authorization') String token, {
    @Query('limit') int limit = 50000,
  });
}
