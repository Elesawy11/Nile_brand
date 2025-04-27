import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/sub_category_model.dart';
part 'get_sub_categorys_state.freezed.dart';

@freezed
class GetSubCategorysState with _$GetSubCategorysState {
  const factory GetSubCategorysState.initial() = _Initial;
  const factory GetSubCategorysState.subCategoryLoading() = SubCategoryLoading;
  const factory GetSubCategorysState.subCategorySuccess(
      {required List<SubCategoryModel> subCategories}) = SubCategorySuccess;
  const factory GetSubCategorysState.subCategoryError({required String error}) =
      SubCategoryError;
}
