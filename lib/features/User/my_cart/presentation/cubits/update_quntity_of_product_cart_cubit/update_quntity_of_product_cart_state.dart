import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_quntity_of_product_cart_state.freezed.dart';

@freezed
class UpdateQuntityOfProductCartState with _$UpdateQuntityOfProductCartState {
  const factory UpdateQuntityOfProductCartState.initial() = _Initial;
  const factory UpdateQuntityOfProductCartState.updateProductLoading() =
      UpdateProductLoading;
  const factory UpdateQuntityOfProductCartState.updateProductSuccess() =
      UpdateProductSuccess;
  const factory UpdateQuntityOfProductCartState.updateProductError(
      {required String error}) = UpdateProductError;
}
