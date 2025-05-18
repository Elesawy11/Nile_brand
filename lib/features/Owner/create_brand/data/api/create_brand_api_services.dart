import 'package:dio/dio.dart';
import '../../../../../core/networking/api_constants.dart';

class BrandInfoSource {
  final Dio _dio;

  BrandInfoSource(this._dio);

  Future<dynamic> createBrand(FormData formData) async {
    final response = await _dio.post(
      "${ApiConstants.baseUrl}brands",
      data: formData,
    );

    return response.data;
  }
}
