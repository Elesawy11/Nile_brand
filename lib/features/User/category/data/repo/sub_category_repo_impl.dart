import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/User/category/data/api/sub_category_source.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
import 'package:nile_brand/features/User/category/data/models/review_model.dart';
import 'package:nile_brand/features/User/category/data/models/review_response_model.dart';
import 'package:nile_brand/features/User/category/data/models/sub_category_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/networking/api_error_handler.dart';

class SubCategoryRepoImpl {
  final SubCategorySource _subCategorySource;

  SubCategoryRepoImpl(this._subCategorySource);
  final String token =
      'Bearer ${getIt.get<SharedPreferences>().getString('token')}';
  Future<ApiResult<List<SubCategoryModel>>> getSubCategories() async {
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

  Future<ApiResult<List<ReviewModel>>> getReviews({required String id}) async {
    try {
      final response = await _subCategorySource.getReviews(id);
      final reviews = getReviewsList(response);
      return ApiResult.success(reviews);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  // Future<ApiResult<String>> deleteProductReview(String productId,String reviewId, String token) async {
  //   try {
  //     await _subCategorySource.deleteReview(productId,reviewId ,token);
  //     return const ApiResult.success("Deleted Successfully!");
  //   }catch(e){

  //     return const ApiResult.failure(ErrorHandler.handle("error"));
  //   }

  Future<ApiResult<ReviewResponseModel>> createReview(
      {required String id, required Map<String, dynamic> body}) async {
    try {
      final response = await _subCategorySource.createReview(id, body, token);
      return ApiResult.success(ReviewResponseModel.fromJson(response['data']));
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }



// static methods



  static List<SubCategoryModel> getSubCategoryList(Map<String, dynamic> data) {
    List<SubCategoryModel> subCategories = [];
      subCategories.add(SubCategoryModel.fromJson(categoryMap));
    }

  static List<ProductModel> getProductsList(Map<String, dynamic> data) {
    List<ProductModel> products = [];
    for (var productMap in data['data']['products']) {
      products.add(ProductModel.fromJson(productMap));
    }
    return products;
  }

  static List<ReviewModel> getReviewsList(Map<String, dynamic> data) {
    List<ReviewModel> reviews = [];
    for (var reviewMap in data['data']) {
      reviews.add(ReviewModel.fromJson(reviewMap));
    }
    return reviews;
  }

  static List<ProductModel> getProductsListNew(Map<String, dynamic> data) {
    List<ProductModel> products = [];
    for (var productMap in data['data']) {
      products.add(ProductModel.fromJson(productMap));
    }
    return products;
  }
}
