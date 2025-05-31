import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import '../../../data/repo/sub_category_repo_impl.dart';
import 'get_reviews_state.dart';

class GetReviewsCubit extends Cubit<GetReviewsState> {
  GetReviewsCubit(this._repo) : super(GetReviewsState.initial());
  final SubCategoryRepoImpl _repo;
  Future<void> getReviews(String subCategoryId) async {
    emit(GetReviewsState.getReviewsLoading());

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
}
