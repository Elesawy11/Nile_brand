import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/User/my_cart/data/repo/my_cart_repo_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../category/data/models/product_model.dart';
import 'add_product_to_cart_state.dart';

class AddProductToCartCubit extends Cubit<AddProductToCartState> {
  AddProductToCartCubit(this._repo)
      : super(const AddProductToCartState.initial());
  final MyCartRepoImpl _repo;
  Future<void> addProductToCart({required ProductModel product}) async {
    emit(const AddProductToCartState.addProductToCartLoading());
    final brand = getIt.get<SharedPreferences>().getString('brand');
    log('brand is::::::::::: $brand');
    if (brand != null && product.brand?.name == brand) {
      final response =
          await _repo.addProductToCart(productId: product.id ?? '');

      switch (response) {
        case Success():
          emit(const AddProductToCartState.addProductToCartSuccess());

          break;
        case Failure():
          emit(
            AddProductToCartState.addProductToCartError(
              error: response.errorHandler.apiErrorModel.error?.message ??
                  'unkown error',
            ),
          );
        default:
      }
    } else if (brand != null && product.brand?.name != brand) {
      emit(const AddProductToCartState.addProductToCartError(
          error: 'the brand name of products must be equal'));
    } else if (brand == null) {
      final response =
          await _repo.addProductToCart(productId: product.id ?? '');

      switch (response) {
        case Success():
          emit(const AddProductToCartState.addProductToCartSuccess());

          break;
        case Failure():
          emit(
            AddProductToCartState.addProductToCartError(
              error: response.errorHandler.apiErrorModel.error?.message ??
                  'unkown error',
            ),
          );
        default:
      }
    }
  }
}
