import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/networking/api_constants.dart';
part 'order_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class GetOrderSource {
  factory GetOrderSource(Dio dio, {String? baseUrl}) = _GetOrderSource;
  @GET(ApiConstants.orders)
  Future<dynamic> getOrders(
    @Header('Authorization') String token,
  );
}
