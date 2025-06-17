import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nile_brand/features/User/category/data/models/review_model.dart';
part 'get_reviews_state.freezed.dart';

@freezed
class GetReviewsState with _$GetReviewsState {
  const factory GetReviewsState.initial() = _Initial;
  const factory GetReviewsState.getReviewsSuccess(
      {required List<ReviewModel> reviews}) = GetReviewsSuccess;
  const factory GetReviewsState.getReviewsLoading() = GetReviewsLoading;
  const factory GetReviewsState.getReviewsError({required String error}) =
      GetReviewsError;
}
