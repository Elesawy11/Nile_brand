import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/features/User/my_cart/data/models/cart_product_model.dart';
import 'package:nile_brand/features/User/my_cart/presentation/views/widgets/mycart_product_details_widget.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/spacer.dart';

class MyCartItemWidget extends StatelessWidget {
  const MyCartItemWidget({
    super.key,
    required this.cartProduct,
  });
  final CartProductModel cartProduct;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: 144.h,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 0),
                color: Colors.black.withValues(alpha: .4),
                blurRadius: 4.r)
          ]),
      child: Row(
        children: [
          cartProduct.product?.coverImage == null
              ? Image.asset(
                  Assets.imagesNotFoundImage,
                  width: 127.w,
                  height: 144.h,
                  fit: BoxFit.cover,
                )
              : Image.network(
                  cartProduct.product!.coverImage!,
                  width: 127.w,
                  height: 144.h,
                  fit: BoxFit.cover,
                ),
          horizontalSpace(6),
          SizedBox(
              width:
                  MediaQuery.of(context).size.width - (127.w + 12 * 2.w + 6.w),
              child: MyCartProductDetailsWidget(cartProduct: cartProduct))
        ],
      ),
    );
  }
}
