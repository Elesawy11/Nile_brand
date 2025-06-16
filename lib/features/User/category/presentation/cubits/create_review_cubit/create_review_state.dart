

import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_review_state.freezed.dart';
@freezed
class CreateReviewState with _$CreateReviewState {
  const factory CreateReviewState.initial() = _Initial;
  const factory CreateReviewState.createReivewLoading() = CreateReivewLoading;
  const factory CreateReviewState.createReivewSuccess() = CreateReivewSuccess;
  const factory CreateReviewState.createReivewError({required String error}) = CreateReivewError;
}
