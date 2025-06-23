import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/Owner/owner_helpers.dart';

import '../../data/repo/order_repo.dart';
import 'order_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  final OrdersRepo _repo;

  OrdersCubit(this._repo) : super(OrdersInitial());

  Future<void> fetchOrders() async {
    final String? token = await BrandPrefs.getToken();
    emit(OrdersLoading());
    final result = await _repo.getAllOrders("Bearer ${token!}");

    switch (result) {
      case Success():
        emit(OrdersSuccess(result.data));

      case Failure():
        emit(OrdersFailure(result.errorHandler.apiErrorModel.error!.message ??
            "An error occurred"));
    }
  }

  Future<void> updateStatus(String orderId, String status) async {
    final String? token = await BrandPrefs.getToken();
    emit(OrdersUpdatingStatus());

    final result =
        await _repo.updateOrderStatus(orderId, status, "Bearer ${token!}");
    switch (result) {
      case Success():
        emit(OrdersStatusUpdated());
      case Failure():
        emit(OrdersFailure(result.errorHandler.apiErrorModel.error!.message ??
            "Failed to update status"));
    }
  }
}
