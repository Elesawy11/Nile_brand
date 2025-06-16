import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/networking/api_constants.dart';
part 'wish_list_source.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class WishListSource {
  factory WishListSource(Dio dio) = _WishListSource;

  @GET(ApiConstants.wishlist)
  Future<dynamic> getWishList(
    @Header('Authorization') String token, {
    @Query('limit') int limit = 50000,
  });
}
