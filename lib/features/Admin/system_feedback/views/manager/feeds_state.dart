import 'package:equatable/equatable.dart';
import 'package:nile_brand/features/Admin/system_feedback/data/model/system_feedback_model.dart';

abstract class SystemFeedbackState extends Equatable {
  const SystemFeedbackState();

  @override
  List<Object> get props => [];
}

class SystemFeedbackInitial extends SystemFeedbackState {}

class SystemFeedbackLoading extends SystemFeedbackState {}

class SystemFeedbackSuccess extends SystemFeedbackState {
  final List<SystemFeedbackModel> feedbacks;

  const SystemFeedbackSuccess(this.feedbacks);

  @override
  List<Object> get props => [feedbacks];
}

class SystemFeedbackFailure extends SystemFeedbackState {
  final String error;

  const SystemFeedbackFailure(this.error);

  @override
  List<Object> get props => [error];
}
