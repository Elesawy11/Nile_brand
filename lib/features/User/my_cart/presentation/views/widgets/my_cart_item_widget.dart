import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/User/my_cart/data/models/cart_product_model.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/cubit/get_my_cart_cubit.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/spacer.dart';
import '../../../../../../core/utils/styles.dart';
import 'increase_and_decrease_icon_widget.dart';

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
      // padding: EdgeInsets.only(right: 5.w),
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
            width: MediaQuery.of(context).size.width - (127.w + 12 * 2.w + 6.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    InkWell(
                      onTap: () {
                        context.read<GetMyCartCubit>().deleteProductFromMyCart(
                            productId: cartProduct.sId ?? '');
                      },
                      child: Icon(
                        Icons.close,
                        color: const Color.fromARGB(255, 194, 30, 19),
                        size: 19.r,
                      ),
                    ),
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
                // const Spacer(),
                SizedBox(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            ),
          )
        ],
      ),
    );
  }
}
