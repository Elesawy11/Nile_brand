import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/User/my_cart/data/models/cart_product_model.dart';
import 'package:nile_brand/features/User/my_cart/data/repo/my_cart_repo_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'get_my_cart_state.dart';

class GetMyCartCubit extends Cubit<GetMyCartState> {
  GetMyCartCubit(this._repo) : super(const GetMyCartState.initial());
  final MyCartRepoImpl _repo;
  List<CartProductModel> cartProducts = [];
  Future<void> getMyCart() async {
    emit(const GetMyCartState.getMyCartLoading());
    final response = await _repo.getMyCart();
    // final List<ProductModel> productsList = getMyCartProducts(data: response.data);

    switch (response) {
      case Success():
        final List<CartProductModel> productsList =
            response.data.cartItems ?? [];
        cartProducts.addAll(productsList);
        log('lenght of cart list ==::: ${productsList.length}');
        await getBrandOfFirstItem(response.data.cartItems!);

        emit(
          GetMyCartState.getMyCartSuccess(
            myCart: response.data,
            productsList: productsList,
          ),
        );

        break;

      case Failure():
        log('lenght of cart list ==::: ${cartProducts.length}');

        emit(
          GetMyCartState.getMyCartError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                'unknown error',
          ),
        );
    }
  }

  static List<CartProductModel> getMyCartProducts(
      {required List<Map<String, dynamic>> data}) {
    List<CartProductModel> products = [];
    for (var element in data) {
      products.add(CartProductModel.fromJson(element));
    }
    return products;
  }

  static getBrandOfFirstItem(List<CartProductModel> list) async {
    if (list.isNotEmpty) {
      final String brandName = list[0].product?.brand?.name ?? '';

      await getIt.get<SharedPreferences>().setString('brand', brandName);
      final name = getIt.get<SharedPreferences>().getString('brand');
      log('name of brand is $name');
      log('lenght of cart list ==::: ${list.length}');
    }
  }
}
