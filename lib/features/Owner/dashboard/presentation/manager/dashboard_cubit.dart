import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/Owner/dashboard/data/models/analytics_model.dart';
import 'package:nile_brand/features/Owner/dashboard/data/models/top_selling_product_model.dart';
import 'package:nile_brand/features/Owner/dashboard/data/repo/dashboard_repo.dart';
import 'package:nile_brand/features/Owner/owner_helpers.dart';
import 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final DashboardRepo _dashboardRepo;

  DashboardCubit(this._dashboardRepo) : super(DashboardInitial());

  List<TopSellingProductData> tops = [];
  DashboardModel? dashboard;

  Future<void> fetchAllDashboardData() async {
    emit(DashboardLoading());
    await getDashboard();
    await getTopSelling();
  }

  Future<void> getDashboard() async {
    try {
      String? token = await BrandPrefs.getToken();
      final result = await _dashboardRepo.getDashboardData("Bearer $token");
      print(result);

      switch (result) {
        case Success(data: final dashboardData):
          dashboard = dashboardData;
          emit(DashboardLoaded(dashboardData));
        case Failure(errorHandler: final error):
          emit(DashboardError(error.apiErrorModel.error?.message ??
              "Failed to load dashboard data"));
      }
    } catch (e) {
      emit(DashboardError("Unexpected error loading dashboard."));
    }
  }

  Future<void> getTopSelling() async {
    try {
      String? token = await BrandPrefs.getToken();
      emit(TopSellingLoading());

      final result = await _dashboardRepo.getTopSelling("Bearer $token");

      switch (result) {
        case Success(data: final topSellingData):
          tops.clear();
          tops.addAll(topSellingData.data);
          emit(TopSellingLoaded(topSellingData));
        case Failure(errorHandler: final error):
          emit(DashboardError(error.apiErrorModel.error?.message ??
              "Failed to load top selling data"));
      }
    } catch (e) {
      emit(DashboardError("Unexpected error loading top selling data."));
    }
  }
}
