import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../Owner/orders_status/data/models/order_model.dart';
import '../../../data/models/orders_model.dart';

// import '../../../data/models/orders_model.dart';
part 'get_orders_state.freezed.dart';

@freezed
class GetOrdersState with _$GetOrdersState {
  const factory GetOrdersState.initial() = _Initial;
  const factory GetOrdersState.getOrdersLoading() = GetOrdersLoading;
  const factory GetOrdersState.getOrdersSuccess({required OrdersModel orders}) =
      GetOrdersSuccess;
  const factory GetOrdersState.getOrdersError({required String error}) =
      GetOrdersError;
}
