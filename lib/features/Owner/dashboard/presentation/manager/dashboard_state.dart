import 'package:equatable/equatable.dart';
import 'package:nile_brand/features/Owner/dashboard/data/models/analytics_model.dart';
import 'package:nile_brand/features/Owner/dashboard/data/models/top_selling_product_model.dart';

abstract class DashboardState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DashboardInitial extends DashboardState {}

class DashboardLoading extends DashboardState {}

class DashboardLoaded extends DashboardState {
  final DashboardModel dashboard;
  DashboardLoaded(this.dashboard);

  @override
  List<Object?> get props => [dashboard];
}

class TopSellingLoading extends DashboardState {}

class TopSellingLoaded extends DashboardState {
  final TopSellingProductsResponse topProducts;
  TopSellingLoaded(this.topProducts);

  @override
  List<Object?> get props => [topProducts];
}

class DashboardError extends DashboardState {
  final String message;
  DashboardError(this.message);

  @override
  List<Object?> get props => [message];
}
