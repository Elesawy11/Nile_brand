import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/home/data/models/category_model.dart';
import '../../../../../core/networking/api_error_handler.dart';
import '../../domain/repo/home_repo.dart';
import '../data_source/category_remote_data_source.dart';

class CategoryRepoImpl extends HomeRepo {
  final HomeRemoteDataSource _categoryRemoteDataSource;

  CategoryRepoImpl(this._categoryRemoteDataSource);
  @override
  Future<ApiResult<List<CategoryModel>>> getCategories(
      {required int page, required int limit}) async {
    try {
      final response = await _categoryRemoteDataSource.getCategories(
          page: page, limit: limit);
      final categories = getCategoryList(response);
      return ApiResult.success(categories);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  List<CategoryModel> getCategoryList(Map<String, dynamic> data) {
    List<CategoryModel> categories = [];
    for (var categoryMap in data['data']) {
      categories.add(CategoryModel.fromJson(categoryMap));
    }
    return categories;
  }
}
