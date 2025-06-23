import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/my_cart/data/repo/my_cart_repo_impl.dart';

import 'create_order_state.dart';

class CreateOrderCubit extends Cubit<CreateOrderState> {
  CreateOrderCubit(this._repo) : super(const CreateOrderState.initial());
  final MyCartRepoImpl _repo;
  TextEditingController address = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> createOrder() async {
    emit(const CreateOrderState.orderLoading());

    final response = await _repo.createOrder(address: address.text);
    switch (response) {
      case Success():
        emit(const CreateOrderState.orderSuccess());

        break;
      case Failure():
        emit(CreateOrderState.orderError(
            response.errorHandler.apiErrorModel.error?.message ??
                "Unknown error"));
        break;
      default:
    }
  }
}
