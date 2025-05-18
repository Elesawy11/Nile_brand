import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/feedback_model.dart';

part 'add_feedback_state.freezed.dart';

@freezed
class AddFeedbackState with _$AddFeedbackState {
  const factory AddFeedbackState.initial() = _Initial;
  const factory AddFeedbackState.addFeedbackLoading() = AddFeedbackLoading;
  const factory AddFeedbackState.addFeedbackSuccess(
      {required FeedbackModel feedback}) = AddFeedbackSuccess;
  const factory AddFeedbackState.addFeedbackError({required String error}) =
      AddFeedbackError;
}
