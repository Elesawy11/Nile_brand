import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../../core/networking/api_constants.dart';

part 'owner_home_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class BrandProductsService {
  factory BrandProductsService(Dio dio, {String baseUrl}) = _BrandProductsService;

  @GET("brands/{brandId}/products")
  Future<dynamic> getBrandProducts(
    @Path("brandId") String brandId,
    @Header("Authorization") String token

  );

  @DELETE("brands/{brandId}/products/{productId}")
  Future<dynamic> delateBrandProduct(
    @Path("brandId") String brandId,
    @Path("productId") String productId,
    @Header("Authorization") String token
  );
}
