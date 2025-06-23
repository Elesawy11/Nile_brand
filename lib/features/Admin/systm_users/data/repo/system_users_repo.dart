import 'package:dio/dio.dart';
import 'package:nile_brand/core/networking/api_error_handler.dart';
import 'package:nile_brand/core/networking/api_result.dart';

import 'package:nile_brand/features/Admin/systm_users/data/api/system_users_source.dart';
import 'package:nile_brand/features/Admin/systm_users/data/models/system_user_model.dart';

class SystemUsersRepo {
  final SystemUsersSource _systemUsersSource;

  SystemUsersRepo({required SystemUsersSource systemUsersSource})
      : _systemUsersSource = systemUsersSource;

  Future<ApiResult<List<UserModel>>> getSystemUsers(String token) async {
    try {
      final response = await _systemUsersSource.getSystemUsers(token);
      print(response);
      final List<dynamic> data = response["data"];

      final List<UserModel> users =
          data.map((ele) => UserModel.fromJson(ele)).toList();

      return ApiResult.success(users);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<UserModel>> createSystemUsers(
      FormData data, String token) async {
    try {
      final response = await _systemUsersSource.createSystemUser(data, token);
      final UserModel newUser = UserModel.fromJson(response["data"]);
      print(newUser.name);
      return ApiResult.success(newUser);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<String>> updateSystemUsers(
      String newName, String id, String token) async {
    try {
      await _systemUsersSource.updateSystemUser(newName, id, token);
      // final UserModel newUser = UserModel.fromJson(response["data"]);

      return const ApiResult.success("Updated Successfully");
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<String>> deleteSystemUser(String id, String token) async {
    try {
      await _systemUsersSource.deleteSystemUser(id, token);

      return const ApiResult.success("Deleted Successfully!");
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
