import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/networking/api_constants.dart';

part "system_feedback_services.g.dart";

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class SystemFeedbackSource {

 factory SystemFeedbackSource(Dio dio, {String baseUrl}) = _SystemFeedbackSource;

  @GET("feedback")
  Future<dynamic> getSystemFeeds(@Header('Authorization') String? token);




  
}
