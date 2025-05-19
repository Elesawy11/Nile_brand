import 'package:dio/dio.dart';
import 'package:nile_brand/core/networking/api_error_handler.dart';
import 'package:nile_brand/core/networking/api_result.dart';
// import 'package:nile_brand/features/Owner/create_brand/data/models/create_brand_response_body.dart';

import '../api/my_brand_services.dart';
import '../models/update_brand_response_body.dart';


class UpdateBrandRepoImpl {
  final BrandDetailsSource _brandDetailsSource;

  UpdateBrandRepoImpl(this._brandDetailsSource);

  Future<ApiResult<UpdatedBrandData>> updateBrand(String brandId, FormData request) async {
    try {
      final response = await _brandDetailsSource.updateBrand(request, brandId);
      final UpdatedBrandData newbrand = UpdatedBrandData.fromJson(response["data"]);
      return ApiResult.success(newbrand);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<String>> deleteBrand(String brandId) async {
    try {
        await _brandDetailsSource.deleteBrand(brandId);
      
      return const ApiResult.success("deleted");
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
