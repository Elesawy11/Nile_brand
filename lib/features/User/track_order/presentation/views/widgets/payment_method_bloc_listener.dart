import 'package:nile_brand/core/routing/exports.dart';

import '../../../../../../core/utils/stripe_service.dart';
import '../../../../../stripe/presentation/views/cubits/cubit/payment_cubit.dart';
import '../../../../../stripe/presentation/views/cubits/cubit/payment_state.dart';
import '../../../data/models/order_model.dart';

class PaymentMethodBlocListener extends StatelessWidget {
  const PaymentMethodBlocListener({
    super.key,
    required this.order,
  });

  final Order order;

  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content:
                  Text('Payment successful for order ${order.orderNumber}'),
            ),
          );
          order.orderNumber = 'paid'; // Update order status
        } else if (state is PaymentError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Payment failed: ${state.error}'),
            ),
          );
        }
      },
      child: ElevatedButton(
        onPressed: () async {
          await StripeService().initPaymentSheet(
              paymentIntentClientSecret:
                  'pi_3RdQKAQdf0qqgb5G1xZVdzsB_secret_fS1cDIVL71rVjoABy0S6Hm7H3');
        },
        child: const Text('Checkout'),
      ),
    );
  }
}
