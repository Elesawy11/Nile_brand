
import 'package:equatable/equatable.dart';
import '../../data/models/order_model.dart';

abstract class OrdersState extends Equatable {
  @override
  List<Object?> get props => [];
}

class OrdersInitial extends OrdersState {}

class OrdersLoading extends OrdersState {}

class OrdersSuccess extends OrdersState {
  final List<OrderModel> orders;

  OrdersSuccess(this.orders);

  @override
  List<Object?> get props => [orders];
}

class OrdersFailure extends OrdersState {
  final String message;

  OrdersFailure(this.message);

  @override
  List<Object?> get props => [message];
}

class OrdersUpdatingStatus extends OrdersState {}

class OrdersStatusUpdated extends OrdersState {}
