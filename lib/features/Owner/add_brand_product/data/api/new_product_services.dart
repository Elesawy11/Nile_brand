import 'dart:io';
import 'package:dio/dio.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/new_product_model.dart';

class ProductApiService {
  final Dio _dio;

  ProductApiService(this._dio);

  Future<dynamic> createProductWithImages({
    required String brandId,
    required NewProductModel model,
  }) async {
    try {
      final formData = FormData();

      formData.fields
        ..add(MapEntry('name', model.name))
        ..add(MapEntry('description', model.description))
        ..add(MapEntry('price', model.price))
        ..add(MapEntry('quantity', model.quantity))
        ..add(MapEntry('category', model.category))
        ..add(MapEntry('subcategory', model.subcategory));

      for (final size in model.sizes) {
        formData.fields.add(MapEntry('sizes', size));
      }

      for (final color in model.colors) {
        formData.fields.add(MapEntry('colors', color));
      }

      formData.files.add(MapEntry(
        'coverImage',
        await MultipartFile.fromFile(
          model.coverImage.path,
          filename: model.coverImage.path.split('/').last,
        ),
      ));

      for (final image in model.images) {
        formData.files.add(MapEntry(
          'images',
          await MultipartFile.fromFile(
            image.path,
            filename: image.path.split('/').last,
          ),
        ));
      }

      final response = await _dio.post(
        "${ApiConstants.baseUrl}/brands/$brandId/products",
        data: formData,
        options: Options(contentType: 'multipart/form-data'),
      );

      print(' Product created successfully: ${response.data}');
      return response;
    } catch (e) {
      print(' Failed to create product: $e');

    }
  }
}
