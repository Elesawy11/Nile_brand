import 'package:nile_brand/core/routing/exports.dart';
import 'package:nile_brand/features/User/track_order/presentation/views/constatns.dart';
import '../../../../stripe/presentation/views/cubits/cubit/payment_cubit.dart';
import '../../data/models/order_model.dart';
import 'widgets/payment_method_bloc_listener.dart';

class OrdersListView extends StatelessWidget {
  const OrdersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<PaymentCubit>(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Orders')),
        body: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: Constatns.orders.length,
          itemBuilder: (context, index) {
            Order order = Constatns.orders[index];
            return InkWell(
              onTap: () {
                // Optional: navigate or show details
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tapped ${order.orderNumber}')),
                );
              },
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 8),
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order: ${order.orderNumber}',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Total: \$${order.totalPrice?.toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child: PaymentMethodBlocListener(order: order),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
