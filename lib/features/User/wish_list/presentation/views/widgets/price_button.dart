import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/add_product_to_cart_cubit/add_product_to_cart_cubit.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/mycart_cubit/get_my_cart_cubit.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../my_cart/presentation/cubits/add_product_to_cart_cubit/add_product_to_cart_state.dart';

class PriceButton extends StatelessWidget {
  const PriceButton({super.key, required this.price, required this.productId});
  final String price;
  final String productId;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // price
        Text(
          price,
          style: Styles.font20W600
              .copyWith(fontSize: 18.sp, color: ColorManager.mainColor),
        ),
        const Spacer(),
        BlocListener<AddProductToCartCubit, AddProductToCartState>(
          listener: (context, state) {
            if (state is AddProductToCartSuccess) {
              // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              //   content: Text('Prdouct add successfully'),
              // ));
              context.read<GetMyCartCubit>().getMyCart();
            } else if (state is AddProductToCartError) {
              // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              //   content: Text('Prdouct not added'),
              // ));
            }
          },
          child: InkWell(
            onTap: () {
              context
                  .read<AddProductToCartCubit>()
                  .addProductToCart(productId: productId);
            },
            child: Container(
              width: 90.w,
              height: 30.h,
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              decoration: BoxDecoration(
                  color: ColorManager.mainColor,
                  borderRadius: BorderRadius.all(Radius.circular(12.r))),
              child: Center(
                child: Text(
                  "Add To Cart",
                  style: Styles.font14W500.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
