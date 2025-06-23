import 'package:dio/dio.dart';
import 'package:nile_brand/core/networking/api_error_handler.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/Admin/manage_categories/data/api/manage_catg_source.dart';
import 'package:nile_brand/features/User/home/data/models/category_model.dart';

import '../../../../User/category/data/models/sub_category_model.dart';
import '../models/subCategory_reponse.dart';

// import '../../../../Owner/owner_home/data/models/all_products_response_body.dart';

class ManageCatgRepo {
  final ManageCatgSource _manageCatgSource;

  ManageCatgRepo({required ManageCatgSource manageCatgSource})
      : _manageCatgSource = manageCatgSource;

  Future<ApiResult<CategoryModel>> createCategory(
      FormData data, String token) async {
    try {
      final response = await _manageCatgSource.createCategory(data, token);
      final CategoryModel newUser = CategoryModel.fromJson(response["data"]);
      print(newUser.name);
      return ApiResult.success(newUser);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<String>> updateCategory(
      FormData newData, String id, String token) async {
    try {
      await _manageCatgSource.updateCategory(newData, id, token);
      return const ApiResult.success("Updated Successfully");
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<String>> deleteCategory(String id, String token) async {
    try {
      await _manageCatgSource.deleteCategory(id, token);

      return const ApiResult.success("Deleted Successfully!");
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<SubCategoryResponse>> createSubCategory(
      String name, String categry, String token) async {
    try {
      final response =
          await _manageCatgSource.createSubCategory(name, categry, token);
      final SubCategoryResponse newUser =
          SubCategoryResponse.fromJson(response["data"]);
      print(newUser.name);
      return ApiResult.success(newUser);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<String>> updateSubCategory(
      String newData, String id, String token) async {
    try {
      await _manageCatgSource.updateSubCategory(newData, id, token);
      return const ApiResult.success("Updated Successfully");
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<String>> deleteSubCategory(String id, String token) async {
    try {
      await _manageCatgSource.deleteSubCategory(id, token);

      return const ApiResult.success("Deleted Successfully!");
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
