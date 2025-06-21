import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_product_to_wishlist_state.freezed.dart';

@freezed
class AddProductToWishlistState with _$AddProductToWishlistState {
  const factory AddProductToWishlistState.initial() = _Initial;
  const factory AddProductToWishlistState.addProductLoading() =
      AddProductLoading;
  const factory AddProductToWishlistState.addProductSuccess() =
      AddProductSuccess;
  const factory AddProductToWishlistState.addProductError(
      {required String error}) = AddProductError;
}
