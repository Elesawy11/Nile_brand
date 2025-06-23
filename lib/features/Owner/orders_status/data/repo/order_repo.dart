import 'package:nile_brand/core/networking/api_error_handler.dart';
import 'package:nile_brand/core/networking/api_result.dart';

import 'package:nile_brand/features/Owner/orders_status/data/models/order_model.dart';

import '../api/orders_source.dart';

class OrdersRepo {
  final OrdersSource _ordersSource;

  OrdersRepo(this._ordersSource);

  Future<ApiResult<List<OrderModel>>> getAllOrders(String? token) async {
    try {
      final response = await _ordersSource.getAllOrders(token);
      final List<dynamic> data = response["data"];

      final List<OrderModel> orders =
          data.map<OrderModel>((e) => OrderModel.fromJson(e)).toList();

      return ApiResult.success(orders);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<String>> updateOrderStatus(
      String orderId, String status, String? token) async {
    try {
      await _ordersSource.updateOrderStatus(orderId, status, token);
      return const ApiResult.success("Status updated successfully");
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
