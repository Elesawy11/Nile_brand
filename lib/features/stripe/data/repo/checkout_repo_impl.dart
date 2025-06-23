import '../../../../core/utils/stripe_service.dart';
import '../models/payment_intent_input_model.dart';

class CheckoutRepoImpl {
  final StripeService _service;

  CheckoutRepoImpl({required StripeService service}) : _service = service;

  Future<void> makePayment(
      {required PaymentIntentInputModel paymentIntnetInputModel,
      required String orderId}) async {
    await _service.makePayment(
      paymentIntentInputModel: paymentIntnetInputModel,
      orderId: orderId,
    );
  }
}
