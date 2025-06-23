import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';

part 'stripe_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class StripeSource {
  factory StripeSource(Dio dio) = _StripeSource;

  @POST(ApiConstants.payments)
  Future<dynamic> createPaymentIntent(
    @Body() Map<String, dynamic> body,
    @Header("Authorization") String token,
  );

  @POST(ApiConstants.confirmPayment)
  Future<dynamic> confirmPayment(
    @Body() Map<String, dynamic> body,
    @Header("Authorization") String token,
  );
}
