import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/User/home/data/repo/category_repo_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../data/models/category_model.dart';
import 'get_category_state.dart';

class GetCategoryCubit extends Cubit<GetCategoryState> {
  final CategoryRepoImpl _repo;
  GetCategoryCubit(this._repo) : super(const GetCategoryState.initial());
  int limit = 20;
  int page = 0;
  bool hasMore = true;
  List<CategoryModel> categoryList = [];

  Future<void> emitGetCategories({bool isLoadMore = false}) async {
    if (!hasMore && isLoadMore) return;

    if (!isLoadMore) {
      page = 1;
      hasMore = true;
      categoryList.clear();
      emit(const GetCategoryState.categoryLoading());

    } else {
      emit(const GetCategoryState.categoryPaginationLoading());

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


        if (categoryList.isNotEmpty) {
          categoryList.clear();
          categoryList.addAll(list);
        }
        else{
         categoryList.addAll(list);
        }

        print(categoryList);

        if (!isClosed) {
          emit(GetCategoryState.categorySuccess(categories: categoryList));
        }

        getIt.get<SharedPreferences>().setInt('category', categoryList.length);
        log('my category length from cubit: ${categoryList.length}');
        break;

      case Failure():
        final errorMsg = response.errorHandler.apiErrorModel.error?.message ??
            "Unknown error";

        if (!isClosed) {
          if (isLoadMore) {
            emit(GetCategoryState.categoryPaginationError(error: errorMsg));
          } else {
            emit(GetCategoryState.categoryError(error: errorMsg));
          }
        }
        break;
    }
  }
}
