import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/service_locator.dart';

import '../../../../../../core/helpers/is_valid_uri.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../wish_list/presentation/cubits/add_product_to_wishlist_cubit/add_product_to_wishlist_cubit.dart';
import '../../../../wish_list/presentation/cubits/add_product_to_wishlist_cubit/add_product_to_wishlist_state.dart';
import '../../../../wish_list/presentation/cubits/delete_from_wishlist_cubit/delete_from_wishlist_cubit.dart';
import '../../../../wish_list/presentation/cubits/delete_from_wishlist_cubit/delete_from_wishlist_state.dart';
import '../../../../wish_list/presentation/cubits/get_wish_list_cubit/get_wish_list_cubit.dart';

class ProductImages extends StatefulWidget {
  final ValueNotifier<int> selectedColor;
  final String productImage;
  final String productId;
  final ValueNotifier<bool> isFavorite;
  const ProductImages(
      {super.key,
      required this.selectedColor,
      required this.productImage,
      required this.isFavorite,
      required this.productId});

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<GetWishListCubit>(),
      child: Center(
        child: Container(
          height: 204.h,
          width: 175.w,
          padding: EdgeInsets.only(right: 11.w, left: 11.w, top: 18.h),
          decoration: BoxDecoration(
            color: const Color(0xffF5F7F8),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withValues(alpha: .4),
                  offset: const Offset(1, 1),
                  blurRadius: 4.r)
            ],
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              BlocListener<AddProductToWishlistCubit,
                  AddProductToWishlistState>(
                listener: (context, state) {
                  if (state is AddProductSuccess) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Prdouct add successfully'),
                    ));

                    getIt.get<GetWishListCubit>().getWishListProduct();
                  } else if (state is AddProductError) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Prdouct not added'),
                      // content: Text(state.error),
                    ));
                  }
                },
                child: ValueListenableBuilder<bool>(
                  valueListenable: widget.isFavorite,
                  builder: (context, value, child) {
                    return Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () {
                            widget.isFavorite.value = !widget.isFavorite.value;
                            if (!value) {
                              context
                                  .read<AddProductToWishlistCubit>()
                                  .addProductToWishlist(
                                    productId: widget.productId,
                                  );
                            } else if (value) {
                              context
                                  .read<DeleteFromWishlistCubit>()
                                  .deleteProductFromMyWishlist(
                                    productId: widget.productId,
                                  );
                            }
                          },
                          child: Icon(
                            value
                                ? Icons.favorite
                                : Icons.favorite_border_rounded,
                            color: value ? Colors.black : null,
                          ),
                        ));
                  },
                ),
              ),
              isValidUri(
                widget.productImage,
              )
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.network(
                        widget.productImage,
                        fit: BoxFit.fill,
                      ),
                    )
                  : SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset(
                        Assets.imagesNoImage,
                        width: 20.r,
                        height: 20.r,
                        // fit: BoxFit.fill,
                      ),
                    ),
              // Image.asset(
              //   "assets/images/dress.png",
              //   width: 120.w,
              //   height: 120.h,
              // ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 100.w,
                  // height: 10.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(
                        5,
                        (index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 10.w),
                            child: Container(
                              height: 7.h,
                              width: 7.w,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7.r)),
                                color: widget.selectedColor.value == index
                                    ? ColorManager.mainColor
                                    : ColorManager.grayD9,
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
