import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_order_state.freezed.dart';

@freezed
class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState.initial() = _Initial;
  const factory CreateOrderState.orderLoading() = OrderLoading;
  const factory CreateOrderState.orderSuccess() = OrderSuccess;
  const factory CreateOrderState.orderError(String error) = OrderError;
}
