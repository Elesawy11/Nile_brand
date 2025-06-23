import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/networking/api_constants.dart';

part "orders_source.g.dart";

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class OrdersSource {
  factory OrdersSource(Dio dio) = _OrdersSource;

  @GET("orders/myOrders")
  Future<dynamic> getAllOrders(@Header('Authorization') String? token);

  @PUT("orders/{id}/updateStatus")
  Future<dynamic> updateOrderStatus(@Path("id") String id,
      @Body() String status, @Header('Authorization') String? token);
}
