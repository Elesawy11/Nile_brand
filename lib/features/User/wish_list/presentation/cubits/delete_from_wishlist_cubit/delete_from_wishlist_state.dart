import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_from_wishlist_state.freezed.dart';

@freezed
class DeleteFromWishlistState with _$DeleteFromWishlistState {
  const factory DeleteFromWishlistState.initial() = _Initial;

  const factory DeleteFromWishlistState.deleteProductLoading() =
      DeleteProductLoading;
  const factory DeleteFromWishlistState.deleteProductSuccess() =
      DeleteProductSuccess;
  const factory DeleteFromWishlistState.deleteProductError(
      {required String error}) = DeleteProductError;
}

