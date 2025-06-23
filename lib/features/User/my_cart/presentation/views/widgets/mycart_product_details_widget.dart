import 'package:nile_brand/core/routing/exports.dart';

import '../../../data/models/cart_product_model.dart';
import 'delete_product_from_cart_widget.dart';
import 'increase_and_decrease_icon_widget.dart';

class MyCartProductDetailsWidget extends StatelessWidget {
  const MyCartProductDetailsWidget({super.key, required this.cartProduct});
  final CartProductModel cartProduct;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 187.w,
              child: Text(
                cartProduct.product?.name ?? '',
                overflow: TextOverflow.ellipsis,
                style: Styles.font20W400,
              ),
            ),
            const Spacer(),
            DeleteProdctFromCartWidget(cartProduct: cartProduct),
            7.hs
          ],
        ),
        verticalSpace(7),
        Text(
          cartProduct.product?.category?.name ?? '',
          style: Styles.font16W400.copyWith(
            color: ColorManager.subText,
          ),
        ),
        Expanded(
          child: Text(
            cartProduct.product?.brand?.name ?? '',
            style: Styles.font16W400,
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              Text(
                '${cartProduct.price} LE',
                style: Styles.font20W400.copyWith(
                    color: ColorManager.mainColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp),
              ),
              const Spacer(),
              Row(
                children: [
                  IncreaseAndDecreaseIconWidget(
                    onTap: () {},
                    icon: Icons.add,
                  ),
                  horizontalSpace(5),
                  Text(
                    cartProduct.quantity.toString(),
                    style: Styles.font14W400,
                  ),
                  horizontalSpace(5),
                  IncreaseAndDecreaseIconWidget(
                    onTap: () {},
                    icon: Icons.remove,
                  ),
                ],
              ),
              7.hs,
            ],
          ),
        )
      ],
    );
  }
}
