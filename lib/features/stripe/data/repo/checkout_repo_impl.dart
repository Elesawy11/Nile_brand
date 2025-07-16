import '../../../../core/utils/stripe_service.dart';
import '../models/payment_intent_input_model.dart';

class CheckoutRepoImpl {
<<<<<<< HEAD
  final StripeService _service;

  CheckoutRepoImpl({required StripeService service}) : _service = service;
=======
  final StripeService _service = StripeService();
>>>>>>> 17a68a0 (stripe methods)

  Future<void> makePayment(
      {required PaymentIntentInputModel paymentIntnetInputModel,
      required String orderId}) async {
    await _service.makePayment(
      paymentIntentInputModel: paymentIntnetInputModel,
      orderId: orderId,
    );
  }
}
