import 'package:bloc/bloc.dart';
import 'package:nile_brand/features/User/wish_list/data/repo_impl/wish_list_repo_impl.dart';

import '../../../../../../core/networking/api_result.dart';
import 'delete_from_wishlist_state.dart';

class DeleteFromWishlistCubit extends Cubit<DeleteFromWishlistState> {
  DeleteFromWishlistCubit(this._repo)
      : super(const DeleteFromWishlistState.initial());

  final WishListRepoImpl _repo;
  Future<void> deleteProductFromMyWishlist({required String productId}) async {
    emit(const DeleteFromWishlistState.deleteProductLoading());
    final response = await _repo.deleteProductFromMyCart(productId: productId);

    switch (response) {
      case Success():
        emit(const DeleteFromWishlistState.deleteProductSuccess());

        break;
      case Failure():
        emit(
          DeleteFromWishlistState.deleteProductError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                "unkown error",
          ),
        );
    }
  }

  Future<void> deleteMyWishlist() async {
    emit(const DeleteFromWishlistState.deleteProductLoading());
    final response = await _repo.deleteMyCart();

    switch (response) {
      case Success():
        emit(const DeleteFromWishlistState.deleteProductSuccess());

        break;
      case Failure():
        emit(
          DeleteFromWishlistState.deleteProductError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                "unkown error",
          ),
        );
    }
  }
}
