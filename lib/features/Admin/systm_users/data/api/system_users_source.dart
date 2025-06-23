import 'package:dio/dio.dart';
import '../../../../../core/networking/api_constants.dart';

class SystemUsersSource {
  final Dio _dio;

  SystemUsersSource(this._dio);

  /// Get all system users
  Future<dynamic> getSystemUsers(String? token) async {
    try {
      final response = await _dio.get(
        "${ApiConstants.baseUrl}users",
        options: Options(headers: {
          "limit": 100,
          "Authorization": token,
        }),
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  /// Create new system user
  Future<dynamic> createSystemUser(FormData data, String? token) async {
    try {
      final response = await _dio.post(
        "${ApiConstants.baseUrl}users",
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

  Future<dynamic> updateSystemUser(
      String newName, String id, String? token) async {
    try {
      final response = await _dio.put(
        "${ApiConstants.baseUrl}users/$id",
        data: newName,
        options: Options(headers: {
          "Authorization": token,
        }),
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  /// Delete system user by ID
  Future<void> deleteSystemUser(String id, String? token) async {
    try {
      await _dio.delete(
        "${ApiConstants.baseUrl}users/$id",
        options: Options(headers: {
          "Authorization": token,
        }),
      );
    } catch (e) {
      rethrow;
    }
  }
}
