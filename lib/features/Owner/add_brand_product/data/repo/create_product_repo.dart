import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/core/networking/api_error_handler.dart';


import '../api/new_product_services.dart';
import '../models/new_product_model.dart';

class CreateProductRepo {
  final ProductApiService _productApiService;

  CreateProductRepo(this._productApiService);

  Future<ApiResult<String>> createProduct({
    required String brandId,
    required NewProductModel model,
  }) async {
    try {
      await _productApiService.createProductWithImages(
        brandId: brandId,
        model: model,
      );
      return const ApiResult.success("Product created successfully");
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
