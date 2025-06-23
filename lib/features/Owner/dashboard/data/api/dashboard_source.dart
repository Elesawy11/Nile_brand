import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';

part 'dashboard_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class DashboardSource {
  factory DashboardSource(Dio dio) = _DashboardSource;

  @GET("analytics/products")
  Future<dynamic> getTopSellingProducts(@Header('Authorization') String? token);

  @GET("analytics/dashboard")
  Future<dynamic> getDashboardSummary(@Header('Authorization') String? token);
}
