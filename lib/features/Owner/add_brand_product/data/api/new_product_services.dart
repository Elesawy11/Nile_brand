import 'package:dio/dio.dart';
import '../../../../../core/networking/api_constants.dart';

class ProductApiService {
  final Dio _dio;

  ProductApiService(this._dio);

  Future<dynamic> createProduct(
      String brandId, String token, FormData data) async {
    final response =
        await _dio.post("${ApiConstants.baseUrl}brands/$brandId/products",
            data: data,
            options: Options(headers: {
              "Authorization": token,
              "Content-Type": "multipart/form-data",
            }));

    return response.data;
  }

  Future<dynamic> updateProduct(
      String brandId, String productId, String token, FormData data) async {
    final response = await _dio.put(
        "${ApiConstants.baseUrl}brands/$brandId/products/$productId",
        data: data,
        options: Options(headers: {
          "Authorization": token,
          "Content-Type": "multipart/form-data",
        }));

    return response.data;
  }
}
