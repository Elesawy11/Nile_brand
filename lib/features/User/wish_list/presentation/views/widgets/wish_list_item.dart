import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
import 'package:nile_brand/features/User/wish_list/presentation/cubits/delete_from_wishlist_cubit/delete_from_wishlist_cubit.dart';
import 'package:nile_brand/features/User/wish_list/presentation/cubits/get_wish_list_cubit/get_wish_list_cubit.dart';
import 'package:nile_brand/features/User/wish_list/presentation/views/widgets/price_button.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';
import '../../cubits/delete_from_wishlist_cubit/delete_from_wishlist_state.dart';

class WishListItem extends StatelessWidget {
  const WishListItem({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.w, right: 12.w, bottom: 17.h),
      child: Container(
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
            Image.asset(
              Assets.imagesTestItem,
              width: 127.w,
              height: 144.h,
              fit: BoxFit.cover,
            ),
            6.hs,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // product name
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 187.w,
                        child: Text(
                          product.name ?? 'not found',
                          overflow: TextOverflow.ellipsis,
                          style: Styles.font20W400,
                        ),
                      ),
                      const Spacer(),
                      BlocListener<DeleteFromWishlistCubit,
                          DeleteFromWishlistState>(
                        listener: (context, state) {
                          if (state is DeleteProductSuccess) {
                            
                            context
                                .read<GetWishListCubit>()
                                .getWishListProduct();
                          }
                        },
                        child: InkWell(
                          onTap: () {
                            context
                                .read<DeleteFromWishlistCubit>()
                                .deleteProductFromMyWishlist(
                                  productId: product.id ?? '',
                                );
                          },
                          child: Icon(
                            Icons.close,
                            color: const Color.fromARGB(255, 194, 30, 19),
                            size: 19.r,
                          ),
                        ),
                      ),
                      7.hs
                    ],
                  ),
                  // product id
                  Text(
                    product.category?.name ?? 'not found',
                    style: Styles.font17W400.copyWith(
                      color: ColorManager.subText,
                    ),
                  ),

                  // product subcategory

                  Expanded(
                    child: SizedBox(
                      // width: 210.w,
                      height: 80.h,
                      child: Text(
                        product.description ?? 'not found',
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.font16W400,
                        softWrap: true,
                        maxLines: 4,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(bottom: 4.h, right: 2.w),
                    child: PriceButton(
                      productId: product.id ?? '',
                      price: product.price.toString(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
