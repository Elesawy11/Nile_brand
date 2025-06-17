import 'package:nile_brand/core/networking/api_error_handler.dart';
import 'package:nile_brand/features/Admin/system_feedback/data/api/system_feedback_services.dart';
import 'package:nile_brand/features/Admin/system_feedback/data/model/system_feedback_model.dart';

import '../../../../../core/networking/api_result.dart';

class SystemFeedbackRepo {
  final SystemFeedbackSource _feedbackSource;

  SystemFeedbackRepo({required SystemFeedbackSource feedbackSource})
      : _feedbackSource = feedbackSource;

  Future<ApiResult<List<SystemFeedbackModel>>> getAllSystemFeeds(
      String token) async {
    try {
      final response = await _feedbackSource.getSystemFeeds(token);
      print(response);
      final List<dynamic> dataList = response['data'];

      final List<SystemFeedbackModel> feeds = dataList
          .map<SystemFeedbackModel>(
              (json) => SystemFeedbackModel.fromJson(json))
          .toList();

      return ApiResult.success(feeds);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
