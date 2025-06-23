
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/networking/api_constants.dart';

part 'system_products_source.g.dart';


@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class SystemProductsSource {
  factory SystemProductsSource(Dio dio, {String baseUrl}) =
      _SystemProductsSource;

  @GET("products")
  Future<dynamic> getSystemProducts(@Header('Authorization') String? token);

  @DELETE("products/{id}")
  Future<void> deletProduct(@Path("id") String id,@Header('Authorization') String? token);

}