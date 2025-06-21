import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/add_product_to_cart_cubit/add_product_to_cart_cubit.dart';
import 'package:nile_brand/features/User/wish_list/presentation/cubits/add_product_to_wishlist_cubit/add_product_to_wishlist_cubit.dart';
import 'package:nile_brand/features/User/wish_list/presentation/cubits/delete_from_wishlist_cubit/delete_from_wishlist_cubit.dart';
import 'package:nile_brand/features/User/wish_list/presentation/cubits/get_wish_list_cubit/get_wish_list_cubit.dart';

import '../../../../my_cart/presentation/cubits/add_product_to_cart_cubit/add_product_to_cart_state.dart';
import '../../../../wish_list/presentation/cubits/add_product_to_wishlist_cubit/add_product_to_wishlist_state.dart';
import '../../../../wish_list/presentation/cubits/delete_from_wishlist_cubit/delete_from_wishlist_state.dart';

class CustomeItem extends StatefulWidget {
  const CustomeItem({super.key, required this.product});
  final ProductModel product;

  @override
  State<CustomeItem> createState() => _CustomeItemState();
}

class _CustomeItemState extends State<CustomeItem> {
  final ValueNotifier<bool> _isFavorite = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.productDetails,
            extra: {'product': widget.product, 'isFavorite': _isFavorite});
      },
      child: Container(
        margin: EdgeInsets.only(top: 5.h, right: 5.w, left: 5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffD9D9D9),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            isValidUri(
              widget.product.images?.first ?? '',
            )
                ? Image.network(
                    widget.product.images!.first,
                    fit: BoxFit.fill,
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
            12.vs,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 86.w,
                    margin: EdgeInsets.only(top: 7.h),
                    child: Text(
                      widget.product.name ?? 'Not Found',
                      style: Styles.font14W400,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(
                    width: 18.r,
                    height: 18.r,
                    child: ValueListenableBuilder<bool>(
                      valueListenable: _isFavorite,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () {
                            _isFavorite.value = !_isFavorite.value;
                            if (value) {
                              // context
                              //     .read<DeleteFromWishlistCubit>()
                              //     .deleteProductFromMyWishlist(
                              //       productId: widget.product.id ?? '',
                              //     );
                            } else if (!value) {
                              // context
                              //     .read<AddProductToWishlistCubit>()
                              //     .addProductToWishlist(
                              //       productId: widget.product.id ?? '',
                              //     );
                            }
                          },
                          child: Icon(
                            value
                                ? Icons.favorite
                                : Icons.favorite_border_rounded,
                            color: value ? Colors.black : null,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            12.vs,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${widget.product.price} L.E',
                    style: Styles.font14W500,
                  ),
                  InkWell(
                    onTap: () {
                      // context
                      //     .read<AddProductToCartCubit>()
                      //     .addProductToCart(productId: widget.product.id ?? '');
                    },
                    child: Image.asset(
                      "assets/images/cartIcon.png",
                      width: 18.r,
                      height: 18.r,
                    ),
                  ),
                ],
              ),
            ),
            12.vs,
          ],
        ),
      ),
    );
  }

  bool isValidUri(String uri) {
    try {
      final parsed = Uri.parse(uri);
      return parsed.isAbsolute && (parsed.hasScheme);
    } catch (e) {
      return false;
    }
  }

  @override
  void dispose() {
    _isFavorite.dispose(); // Clean up the ValueNotifier
    super.dispose();
  }
}
