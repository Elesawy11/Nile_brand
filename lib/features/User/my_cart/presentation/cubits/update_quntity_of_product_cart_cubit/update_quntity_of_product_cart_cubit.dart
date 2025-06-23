import 'package:bloc/bloc.dart';
import 'package:nile_brand/features/User/my_cart/data/repo/my_cart_repo_impl.dart';

import '../../../../../../core/networking/api_result.dart';
import 'update_quntity_of_product_cart_state.dart';

class UpdateQuntityOfProductCartCubit
    extends Cubit<UpdateQuntityOfProductCartState> {
  UpdateQuntityOfProductCartCubit(this._repo)
      : super(const UpdateQuntityOfProductCartState.initial());

  final MyCartRepoImpl _repo;

  Future<void> updateQuntityOfProduct(
      {required String productId, required int quntity}) async {
    emit(const UpdateQuntityOfProductCartState.updateProductLoading());

    final response = await _repo.updateQuntityOfProduct(
        productId: productId, quntity: quntity);
    switch (response) {
      case Success():
        emit(const UpdateQuntityOfProductCartState.updateProductSuccess());

        break;
      case Failure():
        emit(
          UpdateQuntityOfProductCartState.updateProductError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                'unknown errro',
          ),
        );

      default:
    }
  }
}
