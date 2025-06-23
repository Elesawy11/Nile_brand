import 'dart:developer';

import 'package:bloc/bloc.dart';

import '../../../../data/models/payment_intent_input_model.dart';
import '../../../../data/repo/checkout_repo_impl.dart';
import 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this._repo) : super(const PaymentState.initial());
  final CheckoutRepoImpl _repo ;
  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel,
      required String orderId}) async {
    emit(const PaymentState.paymentLoading());

    try {
      await _repo.makePayment(
        paymentIntnetInputModel: paymentIntentInputModel,
        orderId: orderId,
      );
      emit(const PaymentState.paymentSuccess());
    } on Exception catch (e) {
      emit(PaymentState.paymentError(error: e.toString()));
    }
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
