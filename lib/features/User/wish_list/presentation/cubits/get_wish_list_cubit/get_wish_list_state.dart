import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';

part 'get_wish_list_state.freezed.dart';

@freezed
class GetWishListState with _$GetWishListState {
  const factory GetWishListState.initial() = _Initial;
  const factory GetWishListState.getWishListLoading() = GetWishListLoading;
  const factory GetWishListState.getWishListSuccess(
      {required List<ProductModel> products}) = GetWishListSuccess;
  const factory GetWishListState.getWishListError({required String error}) =
      GetWishListError;
}
