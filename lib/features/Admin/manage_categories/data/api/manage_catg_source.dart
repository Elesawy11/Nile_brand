import 'package:dio/dio.dart';
import '../../../../../core/networking/api_constants.dart';

class ManageCatgSource {
  final Dio _dio;

   ManageCatgSource(this._dio);

  Future<dynamic> createCategory(FormData data, String? token) async {
    try {
      final response = await _dio.post(
        "${ApiConstants.baseUrl}categories",
        data: data,
        options: Options(headers: {
          "Authorization": token,
          
          "Content-Type": "multipart/form-data",
        }),
      );
      return response.data;
    } catch (e) {
      rethrow;
    
    }
  }

  Future<dynamic> updateCategory(FormData newData,String id ,String? token) async {
    try {
      final response = await _dio.put(
        "${ApiConstants.baseUrl}categories/$id",
        data: newData,
        options: Options(headers: {
          "Authorization": token,
        }),
      );
      return response.data;
    } catch (e) {
      rethrow;
    
    }
  }

  Future<void> deleteCategory(String id, String? token) async {
    try {
      await _dio.delete(
        "${ApiConstants.baseUrl}categories/$id",
        options: Options(headers: {
          
          "Authorization": token,
        }),
      );
    } catch (e) {
      rethrow;
    }
  }


  Future<dynamic> createSubCategory(String name,String category, String? token) async {
    try {
      final response = await _dio.post(
        "${ApiConstants.baseUrl}subcategories",
        data: {
          "name": name,
          "category":category
        },
        options: Options(headers: {
          "Authorization": token,
          "Content-Type": "application/json",
          

        }),
      );
      return response.data;
    } catch (e) {
      rethrow;
    
    }
  }

  Future<dynamic> updateSubCategory(String newName,String id ,String? token) async {
    try {
      final response = await _dio.put(
        "${ApiConstants.baseUrl}subcategories/$id",
        data:{
          "name": newName,

        } ,
        options: Options(headers: {
          "Authorization": token,
          "Content-Type":  "application/json",
        }),
      );
      return response.data;
    } catch (e) {
      rethrow;
    
    }
  }

  Future<void> deleteSubCategory(String id, String? token) async {
    try {
      await _dio.delete(
        "${ApiConstants.baseUrl}subcategories/$id",
        options: Options(headers: {
          
          "Authorization": token,
        }),
      );
    } catch (e) {
      rethrow;
    }
  }
}
