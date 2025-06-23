import 'dart:developer';

import 'package:nile_brand/core/networking/api_error_handler.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
import 'package:nile_brand/features/User/my_cart/data/models/add_product_to_cart_response_model.dart';
import 'package:nile_brand/features/User/my_cart/data/models/my_cart_model.dart';
import 'package:nile_brand/features/User/my_cart/data/source/my_cart_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/utils/service_locator.dart';

class MyCartRepoImpl {
  final MyCartSource _source;
  MyCartRepoImpl(this._source);

  final String token =
      'Bearer ${getIt.get<SharedPreferences>().getString('token')}';

  Future<ApiResult<MyCartModel>> getMyCart() async {
    try {
      final response = await _source.getMyCart(token);
      final myCart = MyCartModel.fromJson(response['data']);
      return ApiResult.success(myCart);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult> deleteProductFromMyCart({required String productId}) async {
    try {
      final response = await _source.deleteProductFromMyCart(token, productId);
      // final myCart = MyCartModel.fromJson(response['data']);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult> deleteMyCart() async {
    try {
      final response = await _source.deleteMyCart(token);
      return ApiResult.success(response);
    } on Exception catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult> addProductToCart({required String productId}) async {
    try {
      final response =
          await _source.addProductToCart(token, {'product': productId});

      // final result = AddProductToCartResponseModel.fromJson(response);
      // log('my result =:::>>>>>> $result');
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult> updateQuntityOfProduct(
      {required String productId, required int quntity}) async {
    try {
      final response = await _source.updateQuntityOfProduct(
          token, {'quantity': quntity}, productId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
