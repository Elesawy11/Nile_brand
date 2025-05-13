import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/category/data/api/sub_category_source.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
import 'package:nile_brand/features/User/category/data/models/sub_category_model.dart';
import '../../../../../core/networking/api_error_handler.dart';

class SubCategoryRepoImpl {
  final SubCategorySource _subCategorySource;

  SubCategoryRepoImpl(this._subCategorySource);

  Future<ApiResult<List<SubCategoryModel>>> getSubCategories(
      {required String id}) async {
    try {
      final response = await _subCategorySource.getSubCategories(id);
      final categories = getSubCategoryList(response);
      return ApiResult.success(categories);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<List<ProductModel>>> getCategoryProducts(
      {required String id}) async {
    try {
      final response = await _subCategorySource.getCategoryProducts(id);
      final products = getProductsList(response);
      return ApiResult.success(products);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<List<ProductModel>>> getSubCategoryProducts(
      {required String cId, required String subId}) async {
    try {
      final response = await _subCategorySource.getSubCategoryProducts(cId, subId);
      final products = getProductsList(response);
      return ApiResult.success(products);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
  static List<SubCategoryModel> getSubCategoryList(Map<String, dynamic> data) {
    List<SubCategoryModel> subCategories = [];
    for (var categoryMap in data['data']) {
      subCategories.add(SubCategoryModel.fromJson(categoryMap));
    }
    return subCategories;
  }


  static List<ProductModel> getProductsList(Map<String, dynamic> data) {
    List<ProductModel> products = [];
    for (var productMap in data['data']['products']) {
      products.add(ProductModel.fromJson(productMap));
    }
    return products;
  }
}
