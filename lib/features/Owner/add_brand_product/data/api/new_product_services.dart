import 'package:dio/dio.dart';
import '../../../../../core/networking/api_constants.dart';

class ProductApiService {
  final Dio _dio;

  ProductApiService(this._dio);

  Future<dynamic> createProduct(String brandId, FormData data) async {
    final response = await _dio.post(
      "${ApiConstants.baseUrl}/brands/$brandId/products",
      data: data,
    );

    return response.data;
  }
}
