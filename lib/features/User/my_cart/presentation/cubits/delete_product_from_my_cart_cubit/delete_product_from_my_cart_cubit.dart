import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/User/my_cart/data/repo/my_cart_repo_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'delete_product_from_my_cart_state.dart';

class DeleteProductFromMyCartCubit extends Cubit<DeleteProductFromMyCartState> {
  DeleteProductFromMyCartCubit(this._repo)
      : super(const DeleteProductFromMyCartState.initial());

  final MyCartRepoImpl _repo;

  Future<void> deleteProductFromMyCart({required String productId}) async {
    emit(const DeleteProductFromMyCartState.deleteProductLoading());
    final response = await _repo.deleteProductFromMyCart(productId: productId);

    switch (response) {
      case Success():
        getIt.get<SharedPreferences>().remove('brand');
        emit(const DeleteProductFromMyCartState.deleteProductSuccess());

        break;
      case Failure():
        emit(
          DeleteProductFromMyCartState.deleteProductError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                "unkown error",
          ),
        );
    }
  }

  Future<void> deleteMyCart() async {
    emit(const DeleteProductFromMyCartState.deleteProductLoading());
    final response = await _repo.deleteMyCart();

    switch (response) {
      case Success():
        emit(const DeleteProductFromMyCartState.deleteProductSuccess());

        break;
      case Failure():
        emit(
          DeleteProductFromMyCartState.deleteProductError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                "unkown error",
          ),
        );
    }
  }
}
