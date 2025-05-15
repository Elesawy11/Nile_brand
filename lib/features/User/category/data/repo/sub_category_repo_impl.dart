import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/category/data/api/sub_category_source.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
import 'package:nile_brand/features/User/category/data/models/sub_category_model.dart';
import '../../../../../core/networking/api_error_handler.dart';

class SubCategoryRepoImpl {
  final SubCategorySource _subCategorySource;

  SubCategoryRepoImpl(this._subCategorySource);

  Future<ApiResult<List<SubCategoryModel>>> getSubCategories(
     ) async {
    try {
      final response = await _subCategorySource.getSubCategories();
      final categories = getSubCategoryList(response);
      return ApiResult.success(categories);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }


  Future<ApiResult<List<ProductModel>>> getProducts() async {
    try {
      final response = await _subCategorySource.getProducts();
      final products = getProductsListNew(response);
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
  static List<ProductModel> getProductsListNew(Map<String, dynamic> data) {
    List<ProductModel> products = [];
    for (var productMap in data['data']) {
      products.add(ProductModel.fromJson(productMap));
    }
    return products;
  }
}
