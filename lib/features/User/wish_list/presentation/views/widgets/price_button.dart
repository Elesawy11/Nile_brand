<<<<<<< HEAD
import 'package:nile_brand/core/routing/exports.dart' hide ProductModel;

import '../../../../category/data/models/product_model.dart';

class PriceButton extends StatelessWidget {
  const PriceButton({
    super.key,
    required this.price,
    required this.product,
  });
  final String price;

=======
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/add_product_to_cart_cubit/add_product_to_cart_cubit.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/mycart_cubit/get_my_cart_cubit.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../my_cart/presentation/cubits/add_product_to_cart_cubit/add_product_to_cart_state.dart';

class PriceButton extends StatelessWidget {
  const PriceButton({super.key, required this.price, required this.product, });
  final String price;
  // final String productId;
>>>>>>> 258cf62 (filter on cart list)
  final ProductModel product;
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
              context.read<GetMyCartCubit>().getMyCart();
            } else if (state is AddProductToCartError) {}
          },
          child: InkWell(
            onTap: () {
              context
                  .read<AddProductToCartCubit>()
                  .addProductToCart(product: product);
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
