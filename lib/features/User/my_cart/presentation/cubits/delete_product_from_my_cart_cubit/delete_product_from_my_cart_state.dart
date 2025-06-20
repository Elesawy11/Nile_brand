import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_product_from_my_cart_state.freezed.dart';

@freezed
class DeleteProductFromMyCartState with _$DeleteProductFromMyCartState {
  const factory DeleteProductFromMyCartState.initial() = _Initial;
  const factory DeleteProductFromMyCartState.deleteProductLoading() =
      DeleteProductLoading;
  const factory DeleteProductFromMyCartState.deleteProductSuccess() =
      DeleteProductSuccess;
  const factory DeleteProductFromMyCartState.deleteProductError(
      {required String error}) = DeleteProductError;
}
