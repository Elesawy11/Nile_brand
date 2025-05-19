import 'package:dio/dio.dart';
import '../../../../../core/networking/api_constants.dart';

class BrandDetailsSource {
  final Dio _dio;
  BrandDetailsSource(this._dio);

  Future<dynamic> updateBrand(FormData data, String brandId) async {
    final response =
        await _dio.put("${ApiConstants.baseUrl}brands/$brandId", data: data);

    return response.data;
  }

  Future<void> deleteBrand(String brandId) async {
    await _dio.delete("${ApiConstants.baseUrl}brands/$brandId");
  }

  
}
