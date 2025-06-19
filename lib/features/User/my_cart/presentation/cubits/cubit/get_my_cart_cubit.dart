import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/my_cart/data/repo/my_cart_repo_impl.dart';

import '../../../../category/data/models/product_model.dart';
import 'get_my_cart_state.dart';

class GetMyCartCubit extends Cubit<GetMyCartState> {
  GetMyCartCubit(this._repo) : super(const GetMyCartState.initial());
  final MyCartRepoImpl _repo;
  Future<void> getMyCart() async {
    emit(const GetMyCartState.getMyCartLoading());
    final response = await _repo.getMyCart();
    // final List<ProductModel> productsList = getMyCartProducts(data: response.data);

    switch (response) {
      case Success():
        final List<ProductModel> productsList =
            getMyCartProducts(data: response.data.cartItems ?? []);
        emit(
          GetMyCartState.getMyCartSuccess(
            myCart: response.data,
            productsList: productsList,
          ),
        );

        break;

      case Failure():
        emit(
          GetMyCartState.getMyCartError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                'unknown error',
          ),
        );
    }
  }

  List<ProductModel> getMyCartProducts(
      {required List<Map<dynamic, dynamic>> data}) {
    List<ProductModel> products = [];
    for (var element in data) {
      products.add(ProductModel.fromJson(element['product']));
    }
    return products;
  }
}
