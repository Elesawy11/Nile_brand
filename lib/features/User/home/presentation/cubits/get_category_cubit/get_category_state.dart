import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nile_brand/features/User/home/data/models/category_model.dart';
part 'get_category_state.freezed.dart';

@freezed
class GetCategoryState with _$GetCategoryState {
  const factory GetCategoryState.initial() = _Initial;
  const factory GetCategoryState.categoryLoading() = CategoryLoading;
  const factory GetCategoryState.categorySuccess(
      {required List<CategoryModel> categories}) = CategorySuccess;
  const factory GetCategoryState.categoryError({required String error}) =
      CategoryError;
  const factory GetCategoryState.categoryPaginationLoading() =
      CategoryPaginationLoading;
  const factory GetCategoryState.categoryPaginationError(
      {required String error}) = CategoryPaginationError;
}
