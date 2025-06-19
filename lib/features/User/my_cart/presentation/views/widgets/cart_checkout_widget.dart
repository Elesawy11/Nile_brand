import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/spacer.dart';
import '../../../../../../core/widgets/app_text_button.dart';
import 'checkout_text_widget.dart';

class CartCheckoutWidget extends StatelessWidget {
  const CartCheckoutWidget({
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
        SizedBox(
          width: 218.w,
          child: AppTextButton(
            backgroundColor: ColorManager.mainColor,
            text: 'Checkout',
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
