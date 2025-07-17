import 'package:dio/dio.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/core/networking/api_error_handler.dart';
import '../api/new_product_services.dart';

class CreateProductRepo {
  final ProductApiService _productApiService;

  CreateProductRepo(this._productApiService);

  Future<ApiResult<String>> createProduct({
    required String brandId,
    required String token,
    required FormData data,
  }) async {
    try {

      await _productApiService.createProduct(brandId, token, data);
      return const ApiResult.success("Product created successfully");
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<String>> updateProduct(
      {required String brandId,
      required String productId,
      required String token,
      required FormData data}) async {
    try {
      await _productApiService.updateProduct(brandId, productId, token, data);

      return const ApiResult.success("Product created successfully");
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<String>> updateProduct({
    required String brandId,
    required String productId,
    required String token,
    required FormData data}
  )async{

    try {
      await _productApiService.updateProduct(brandId ,productId,token,data);
      return const ApiResult.success("Product created successfully");
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }




  }
}
