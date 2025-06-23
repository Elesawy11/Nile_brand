import 'package:nile_brand/features/Admin/manage_products/data/api/system_products_source.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';

class SystemProductsRepo {
  final SystemProductsSource _allProductsSource;

  SystemProductsRepo({required SystemProductsSource allProductsSource})
      : _allProductsSource = allProductsSource;

  Future<ApiResult<List<ProductModel>>> getAllSystemProducts(
      String token) async {
    try {
      final response = await _allProductsSource.getSystemProducts(token);
      print(response);
      final List<dynamic> dataList = response['data'];

      final List<ProductModel> products = dataList
          .map<ProductModel>((json) => ProductModel.fromJson(json))
          .toList();

      return ApiResult.success(products);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<String>> deleteProduct(String id, String token) async {
    try {
      await _allProductsSource.deletProduct(id, token);
      return const ApiResult.success("Deleted Successfully!");
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
