import 'package:nile_brand/core/routing/exports.dart';

import '../../cubits/create_order_cubit/create_order_cubit.dart';
import 'checkout_text_widget.dart';

class MyCartDetailsWidget extends StatelessWidget {
  const MyCartDetailsWidget({
    super.key,
    required this.price,
  });

  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(22),
        CheckoutTextWidget(
          subtotal: 'Subtotal',
          total: '$price LE',
          subColor: ColorManager.gray8C,
        ),
        verticalSpace(18),
        Divider(
          color: ColorManager.gray8C,
          thickness: 1,
          endIndent: 26.w,
          indent: 26.w,
        ),
        CheckoutTextWidget(
          subtotal: 'Total',
          total: '$price LE',
        ),
        verticalSpace(32),
        AppTextFormField(
          hintText: 'Enter your address',
          controller: context.read<CreateOrderCubit>().address,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your address';
            }
            return null;
          },
        ),
        verticalSpace(24),
        SizedBox(
          width: 218.w,
          child: AppTextButton(
            backgroundColor: ColorManager.mainColor,
            text: 'Create Order',
            onPressed: () {
              if (context
                  .read<CreateOrderCubit>()
                  .formKey
                  .currentState!
                  .validate()) {
                context.read<CreateOrderCubit>().createOrder();
              }
            },
          ),
        )
      ],
    );
  }
}
