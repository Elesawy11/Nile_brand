import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nile_brand/features/User/my_cart/data/models/cart_product_model.dart';

import '../../../data/models/my_cart_model.dart';
part 'get_my_cart_state.freezed.dart';

@freezed
class GetMyCartState with _$GetMyCartState {
  const factory GetMyCartState.initial() = _Initial;
  const factory GetMyCartState.getMyCartSuccess(
      {required MyCartModel myCart,
      required List<CartProductModel> productsList}) = GetMyCartSuccess;
  const factory GetMyCartState.getMyCartLoading() = GetMyCartLoading;
  const factory GetMyCartState.getMyCartError({required String error}) =
      GetMyCartError;
}
