import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_product_to_cart_state.freezed.dart';

@freezed
class AddProductToCartState with _$AddProductToCartState {
  const factory AddProductToCartState.initial() = _Initial;
  const factory AddProductToCartState.addProductLoading() = AddProductLoading;
  const factory AddProductToCartState.addProductSuccess() = AddProductSuccess;
  const factory AddProductToCartState.addProductError({required String error}) =AddProductError;
}
