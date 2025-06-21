import 'package:bloc/bloc.dart';
import 'package:nile_brand/features/User/wish_list/data/repo_impl/wish_list_repo_impl.dart';

import '../../../../../../core/networking/api_result.dart';
import 'add_product_to_wishlist_state.dart';

class AddProductToWishlistCubit extends Cubit<AddProductToWishlistState> {
  AddProductToWishlistCubit(this._repo)
      : super(const AddProductToWishlistState.initial());
  final WishListRepoImpl _repo;
  Future<void> addProductToWishlist({required String productId}) async {
    emit(const AddProductToWishlistState.addProductLoading());

    final response = await _repo.addProductToWishlist(productId: productId);

    switch (response) {
      case Success():
        emit(const AddProductToWishlistState.addProductSuccess());

        break;
      case Failure():
        emit(
          AddProductToWishlistState.addProductError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                'unkown error',
          ),
        );
      default:
    }
  }
}
