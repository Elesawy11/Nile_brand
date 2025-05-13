

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/product_model.dart';
part 'get_sub_category_product_state.freezed.dart';
@freezed
class GetSubCategoryProductState with _$GetSubCategoryProductState {
  const factory GetSubCategoryProductState.initial() = _Initial;
  const factory GetSubCategoryProductState.getProductLoading() = GetProductLoading;
  const factory GetSubCategoryProductState.getProductSuccess({required List<ProductModel> products}) = GetProductSuccess;
  const factory GetSubCategoryProductState.getProductError({required String error}) = GetProductError;
}
