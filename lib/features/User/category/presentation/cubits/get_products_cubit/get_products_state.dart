
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
part 'get_products_state.freezed.dart';
@freezed
class GetProductsState with _$GetProductsState {
  const factory GetProductsState.initial() = _Initial;
  const factory GetProductsState.getProductSuccess({required List<ProductModel>products}) = GetProductSuccess;
  const factory GetProductsState.getProductLoading() = GetProductLoading;
  const factory GetProductsState.getProductError({required String error}) = GetProductError;
}
