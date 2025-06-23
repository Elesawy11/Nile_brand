import 'package:nile_brand/core/networking/api_error_handler.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
import 'package:nile_brand/features/User/wish_list/data/api/wish_list_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WishListRepoImpl {
  final WishListSource _repo;

  WishListRepoImpl(this._repo);

  final String token =
      'Bearer ${getIt.get<SharedPreferences>().getString('token')}';

  Future<ApiResult<List<ProductModel>>> getWishList() async {
    try {
      final response = await _repo.getWishList(token);
      final products = getProductFromWishList(response);
      return ApiResult.success(products);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult> addProductToWishlist({required String productId}) async {
    try {
      final response =
          await _repo.addProductToWishList(token, {'product': productId});

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult> deleteProductFromMyCart({required String productId}) async {
    try {
      final response =
          await _repo.deleteProductFromMyWishlist(token, productId);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult> deleteMyCart() async {
    try {
      final response = await _repo.deleteMywishlist(token);
      return ApiResult.success(response);
    } on Exception catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  static List<ProductModel> getProductFromWishList(Map<String, dynamic> data) {
    List<ProductModel> wishListProducts = [];

    for (var product in data['data']) {
      wishListProducts.add(ProductModel.fromJson(product));
    }
    return wishListProducts;
  }
}
