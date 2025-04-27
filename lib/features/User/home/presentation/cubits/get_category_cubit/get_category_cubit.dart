import 'package:bloc/bloc.dart';
import 'package:nile_brand/features/User/home/domain/repo/home_repo.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../data/models/category_model.dart';
import 'get_category_state.dart';

class GetCategoryCubit extends Cubit<GetCategoryState> {
  final HomeRepo _repo;
  GetCategoryCubit(this._repo) : super(GetCategoryState.initial());
  int limit = 20;
  int page = 0;
  bool hasMore = true;
  List<CategoryModel> categoryList = [];

  Future<void> emitGetCategories({bool isLoadMore = false}) async {
    // if hasMore is false and isLoadMore is true then return
    if (!hasMore && isLoadMore) return;
    // first request or if you have to make refresh button
    if (!isLoadMore) {
      page = 1;
      hasMore = true;
      categoryList.clear();
      emit(GetCategoryState.categoryLoading());
    } else {
      emit(GetCategoryState.categoryPaginationLoading());
    }
    final response = await _repo.getCategories(limit: limit, page: page);
    switch (response) {
      case Success():
        final List<CategoryModel> list = response.data;
        if (list.isEmpty) {
          hasMore = false;
        } else {
          page += 1;
          hasMore = true;
        }

        categoryList.addAll(list);
        emit(GetCategoryState.categorySuccess(categories: categoryList));
        break;
      case Failure():
        if (isLoadMore) {
          emit(
            GetCategoryState.categoryPaginationError(
              error: response.errorHandler.apiErrorModel.error?.message ??
                  "Unknown error",
            ),
          );
        } else {
          emit(
            GetCategoryState.categoryError(
              error: response.errorHandler.apiErrorModel.error?.message ??
                  "Unknown error",
            ),
          );
        }
    }
  }
}
