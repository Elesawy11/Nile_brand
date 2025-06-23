import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../api/owner_home_services.dart';
import '../models/all_products_response_body.dart';

class BrandProductsRepo {
  final BrandProductsService _brandProductsService;

  BrandProductsRepo(this._brandProductsService);

  Future<ApiResult<List<BrandProductModel>>> getBrandProducts(
      String brandId, String? token) async {
    try {
      final response =
          await _brandProductsService.getBrandProducts(brandId, token!);

      return ApiResult.success(AllProductsResponse.fromJson(response).data);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<void>> delateBrandProduct(
      String brandId, String productId, String? token) async {
    try {
      final response = await _brandProductsService.delateBrandProduct(
          brandId, productId, token!);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
