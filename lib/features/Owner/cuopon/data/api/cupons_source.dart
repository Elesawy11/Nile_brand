import 'package:dio/dio.dart';
import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopon_request_body.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/networking/api_constants.dart';

part "cupons_source.g.dart";

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class CouponsSource {
  factory CouponsSource(Dio dio) = _CouponsSource;

  @POST('coupons')
  Future<dynamic> createCoupon(@Body() CuponRequestBody coupon,@Header('Authorization') String? token);

  @DELETE("coupons/{id}")
  Future<void> deletCoupon(@Path("id") String id,@Header('Authorization') String? token);

  @GET("coupons")
  Future<dynamic> getAllCupons(@Header('Authorization') String? token);

  @PUT("coupons/{id}")
  Future<dynamic> updateCupon(@Path("id") String id ,@Body() CuponRequestBody newCupon ,@Header('Authorization') String? token);
   

  @POST("coupons/sendCoupon")
  Future<dynamic> sendCupon(@Body() String email,@Header('Authorization') String? token);

}
