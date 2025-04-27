import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/home/data/models/category_model.dart';

abstract class HomeRepo {
  Future<ApiResult<List<CategoryModel>>> getCategories(
      {required int page, required int limit});
}
