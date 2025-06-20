import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/my_cart/data/repo/my_cart_repo_impl.dart';

import 'add_product_to_cart_state.dart';

class AddProductToCartCubit extends Cubit<AddProductToCartState> {
  AddProductToCartCubit(this._repo)
      : super(const AddProductToCartState.initial());
  final MyCartRepoImpl _repo;
  Future<void> addProductToCart({required String productId}) async {
    emit(const AddProductToCartState.addProductLoading());

    final response = await _repo.addProductToCart(productId: productId);

    switch (response) {
      case Success():
        emit(const AddProductToCartState.addProductSuccess());

        break;
      case Failure():
        emit(
          AddProductToCartState.addProductError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                'unkown error',
          ),
        );
      default:
    }
  }
}
