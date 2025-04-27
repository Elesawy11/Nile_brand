import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/product_model.dart';
part 'get_category_products_state.freezed.dart';

@freezed
class GetCategoryProductsState with _$GetCategoryProductsState {
  const factory GetCategoryProductsState.initial() = _Initial;
  const factory GetCategoryProductsState.getProductsLoading() =
      GetProductsLoading;
  const factory GetCategoryProductsState.getProductsSuccess(
      {required List<ProductModel> products}) = GetProductsSuccess;
  const factory GetCategoryProductsState.getProductsError(
      {required String error}) = GetProductsError;
}
