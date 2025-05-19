import 'package:dio/dio.dart';
import 'package:nile_brand/core/networking/api_error_handler.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import '../api/create_brand_api_services.dart';

import '../models/create_brand_response_body.dart';

class CreateBrandRepoImpl {
  final BrandInfoSource _brandInfoSource;

  CreateBrandRepoImpl(this._brandInfoSource);

  Future<ApiResult<BrandData>> createBrand(FormData request) async {
    try {
      final response = await _brandInfoSource.createBrand(request);
      final BrandData newbrand = BrandData.fromJson(response["data"]);
      return ApiResult.success(newbrand);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
