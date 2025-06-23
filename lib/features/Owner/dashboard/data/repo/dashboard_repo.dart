import 'package:nile_brand/features/Owner/dashboard/data/api/dashboard_source.dart';
import 'package:nile_brand/features/Owner/dashboard/data/models/top_selling_product_model.dart';
// import 'package:nile_brand/features/Owner/dashboard/presentation/views/widgets/top_selling_products.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../models/analytics_model.dart';

class DashboardRepo {
  final DashboardSource _dashboardSource;
  DashboardRepo(this._dashboardSource);

  Future<ApiResult<DashboardModel>> getDashboardData(String? token) async {
    try {
      final response = await _dashboardSource.getDashboardSummary(token!);
      print(response);

      final DashboardModel dashboardData = DashboardModel.fromJson(response);
      print(dashboardData);

      return ApiResult.success(dashboardData);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<TopSellingProductsResponse>> getTopSelling(String? token) async {
  try {
    final response = await _dashboardSource.getTopSellingProducts(token!);
    print(response);

    final TopSellingProductsResponse tops = TopSellingProductsResponse.fromJson(response);
    return ApiResult.success(tops);
  } catch (error) {
    return ApiResult.failure(ErrorHandler.handle(error));
  }
}

}
