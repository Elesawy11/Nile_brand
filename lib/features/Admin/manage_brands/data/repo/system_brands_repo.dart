import 'package:nile_brand/features/Admin/manage_brands/data/api/all_brands_source.dart';
import 'package:nile_brand/features/Admin/manage_brands/data/models/brand_model.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';

class SystemBrandsRepo {
  final AllBrandsSource _allBrandsSource;

  SystemBrandsRepo({required AllBrandsSource allBrandsSource}) : _allBrandsSource = allBrandsSource;

  Future<ApiResult<List<SystemBrand>>> getAllSystemBrands(
      String token) async {
    try {
      final response = await _allBrandsSource.getSystemBrands(token);
      print(response);
      final List<dynamic> dataList = response['data'];

      final List<SystemBrand> brands = dataList
          .map<SystemBrand>(
              (json) => SystemBrand.fromJson(json))
          .toList();

      return ApiResult.success(brands);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<String>> deleteBrand(String id, String token) async {
    try {
      await _allBrandsSource.deletBrand(id, token);
      return const ApiResult.success("Deleted Successfully!");
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
