import 'package:nile_brand/core/routing/exports.dart';

import '../../cubits/create_order_cubit/create_order_cubit.dart';
import '../../cubits/create_order_cubit/create_order_state.dart';
import 'my_cart_details_widgt.dart';

class CartCheckoutWidget extends StatelessWidget {
  const CartCheckoutWidget({
    super.key,
    required this.price,
  });
  final String price;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<CreateOrderCubit>(),
      child: BlocConsumer<CreateOrderCubit, CreateOrderState>(
        listener: (context, state) {
          if (state is OrderSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Order created successfully!'),
                backgroundColor: ColorManager.mainColor,
              ),
            );
            context.read<CreateOrderCubit>().address.clear();
            context.read<GetMyCartCubit>().getMyCart();
          } else if (state is OrderError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
                backgroundColor: Colors.red,
              ),
            );
          } else if (state is OrderLoading) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Creating order...'),
                backgroundColor: ColorManager.mainColor,
              ),
            );
          }
        },
        builder: (context, state) {
          return Form(
            key: context.read<CreateOrderCubit>().formKey,
            child: MyCartDetailsWidget(price: price),
          );
        },
      ),
    );
  }
}
