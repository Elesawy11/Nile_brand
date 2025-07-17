import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Admin/manage_products/views/manager/manage_products_cubit.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class ExistingProducts extends StatelessWidget {
  final ProductModel product;
  const ExistingProducts({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147.r,
      height: 157.r,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: ColorManager.grayD9,
          borderRadius: BorderRadius.all(Radius.circular(20.r))),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(

              onTap: () => context.push(Routes.productReviews, extra: product),
              child: product.coverImage == null
                  ? SizedBox(
                      width: 159.w,
                      height: 120.w,
                      child:
                          Center(child: const Icon(Icons.image_not_supported)))
                  : product.coverImage!.contains("https")
                      ? Image.network(
                          product.coverImage!,
                          width: 159.w,
                          height: 120.w,
                          fit: BoxFit.fill,
                        )
                      : Image.network(
                          "https://nile-brands.up.railway.app/products/${product.coverImage!}")),

          Padding(
            padding: EdgeInsets.only(top: 5.h, left: 5.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                product.name!,
                style: Styles.font12W300.copyWith(

                    fontSize: 15.sp, fontWeight: FontWeight.w600, height: 0.h),

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(

                product.brand == null ? "" : product.brand!.name!,

                style: Styles.font12W300
                    .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w600),
              ),
            ),
          ),

          SizedBox(
            width: 140.r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${product.price!}',
                  style:
                      Styles.font12W500.copyWith(fontWeight: FontWeight.w600),
                ),
                50.hs,
                InkWell(
                  onTap: () {
                    context
                        .read<SystemProductsCubit>()
                        .deleteProduct(product.id!);
                  },
                  child: Image.asset(
                    Assets.imagesDeleteIcon,
                    width: 16.r,
                    height: 16.r,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
