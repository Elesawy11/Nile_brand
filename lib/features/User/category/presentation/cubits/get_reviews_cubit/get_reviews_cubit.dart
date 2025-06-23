import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import '../../../../../Owner/owner_helpers.dart';
import '../../../data/repo/sub_category_repo_impl.dart';
import 'get_reviews_state.dart';

class GetReviewsCubit extends Cubit<GetReviewsState> {
  GetReviewsCubit(this._repo) : super(const GetReviewsState.initial());
  final SubCategoryRepoImpl _repo;
  Future<void> getReviews(String subCategoryId) async {
    emit(const GetReviewsState.getReviewsLoading());

    final response = await _repo.getReviews(id: subCategoryId);

    switch (response) {
      case Success():
        emit(GetReviewsState.getReviewsSuccess(reviews: response.data));
      case Failure():
        emit(
          GetReviewsState.getReviewsError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                'Unknown error',
          ),
        );
    }
  }
  // Future<void> deleteProductReview(String productId , String reviewId) async {
  //   String? token = await BrandPrefs.getToken();
  //   emit(const GetReviewsState.getReviewsLoading());
  //   final result = await _repo.deleteProductReview(productId,reviewId, "Bearer ${token!}");
  //   switch (result) {
  //     case Success():
  //       emit(const GetReviewsState.getReviewsSuccess(reviews: []));

  //       break;
  //     case Failure():
  //       emit(GetReviewsState.getReviewsError(
  //          error: result.errorHandler.apiErrorModel.error!.message ??
  //               "Failed to delete"));
  //   }
  // }


}
