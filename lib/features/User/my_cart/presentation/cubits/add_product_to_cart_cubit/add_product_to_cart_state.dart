import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_product_to_cart_state.freezed.dart';

@freezed
class AddProductToCartState with _$AddProductToCartState {
  const factory AddProductToCartState.initial() = _Initial;
  const factory AddProductToCartState.addProductToCartLoading() =
      AddProductToCartLoading;
  const factory AddProductToCartState.addProductToCartSuccess() =
      AddProductToCartSuccess;
  const factory AddProductToCartState.addProductToCartError(
      {required String error}) = AddProductToCartError;
}
