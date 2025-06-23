import 'dart:developer';

import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/track_order/data/source/order_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/utils/service_locator.dart';
import '../models/orders_model.dart';

class GetOrderRepoImpl {
  final GetOrderSource _source;
  GetOrderRepoImpl(this._source);
  final String token =
      'Bearer ${getIt.get<SharedPreferences>().getString('token')}';
  Future<ApiResult<OrdersModel>> getOrders() async {
    try {
      final response = await _source.getOrders(token);
      log('response is  ${response.data}');
      final orders = OrdersModel.fromJson(response.data);
      return ApiResult.success(orders);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
