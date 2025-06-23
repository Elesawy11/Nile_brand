import 'package:nile_brand/core/routing/exports.dart';

import '../../../../../stripe/data/models/payment_intent_input_model.dart';
import '../../../../../stripe/presentation/views/cubits/cubit/payment_cubit.dart';
import '../../../../../stripe/presentation/views/cubits/cubit/payment_state.dart';
import '../../../../wish_list/presentation/views/widgets/empty_wishlist_view.dart';

class PaymentBlocConsumer extends StatelessWidget {
  const PaymentBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('done successfully')));
        } else if (state is PaymentError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error)));
        }
      },
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context.read<PaymentCubit>().makePayment(
                  paymentIntentInputModel: PaymentIntentInputModel(
                    amount: '100',
                    currency: 'USD',
                  ),
                  orderId: '',
                );
          },
          child: EmptyWishlistView(
            message: state is PaymentLoading
                ? 'loading....'
                : 'Start exploring and add your product items to your cart...',
          ),
        );
      },
    );
  }
}
