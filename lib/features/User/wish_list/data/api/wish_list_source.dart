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

  @POST(ApiConstants.wishlist)
  Future<dynamic> addProductToWishList(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );

  @DELETE('${ApiConstants.wishlist}/{id}')
  Future<dynamic> deleteProductFromMyWishlist(
    @Header('Authorization') String token,
    @Path('id') String id,
  );

  @DELETE(ApiConstants.wishlist)
  Future<dynamic> deleteMywishlist(
    @Header('Authorization') String token,
  );
}
