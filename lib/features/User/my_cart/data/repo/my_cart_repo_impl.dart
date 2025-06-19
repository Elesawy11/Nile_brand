import 'package:nile_brand/core/networking/api_error_handler.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
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

  //  List<ProductModel> getMyCartProducts(
  //     {required List<Map<dynamic, dynamic>> data}) {
  //   List<ProductModel> products = [];
  //   for (var element in data) {
  //     products.add(ProductModel.fromJson(element['product']));
  //   }
  //   return products;
  // }
}
