import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/add_product_to_cart_cubit/add_product_to_cart_cubit.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/delete_product_from_my_cart_cubit/delete_product_from_my_cart_cubit.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/mycart_cubit/get_my_cart_cubit.dart';
import 'package:readmore/readmore.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../my_cart/presentation/cubits/add_product_to_cart_cubit/add_product_to_cart_state.dart';
import '../../../data/models/product_model.dart';

class DescreptionInfo extends StatelessWidget {
  const DescreptionInfo(
      {super.key,
      this.description,
      required this.productId,
      required this.isCarted,
      required this.product});
  final String? description;
  final String productId;
  final ProductModel product;
  final ValueNotifier<bool> isCarted;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<GetMyCartCubit>(),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22.w, right: 22.w),
            child: Center(
                child: ReadMoreText(
              description ??
                  'This is a very long description that you might want to truncate initially and show fully when the user clicks on Read More...',
              trimLines: 2,
              colorClickableText: Colors.red,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read more',
              trimExpandedText: 'Read less',
              style: Styles.font16W500.copyWith(
                color: Colors.black,
              ),
              moreStyle: Styles.font16W500.copyWith(color: Colors.red),
              lessStyle: Styles.font16W500.copyWith(color: Colors.red),
            )),
          ),
          27.vs,
          Padding(
            padding: EdgeInsets.only(left: 28.w, right: 28.w),
            child: Row(
              children: [
                BlocConsumer<AddProductToCartCubit, AddProductToCartState>(
                  listener: (context, state) {
                    if (state is AddProductToCartSuccess) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Prdouct add successfully'),
                      ));

                      getIt.get<GetMyCartCubit>().getMyCart();
                    } else if (state is AddProductToCartError) {
                      if (state.error ==
                          'the brand name of products must be equal') {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(state.error),
                          // content: Text(state.error),
                        ));
                      }
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Prdouct not added'),
                        // content: Text(state.error),
                      ));
                    }
                  },
                  builder: (context, state) {
                    return ValueListenableBuilder<bool>(
                      valueListenable: isCarted,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () {
                            isCarted.value = !isCarted.value;
                            if (!value) {
                              context
                                  .read<AddProductToCartCubit>()
                                  .addProductToCart(product: product);
                            } else if (value) {
                              context
                                  .read<DeleteProductFromMyCartCubit>()
                                  .deleteProductFromMyCart(
                                    productId: productId,
                                  );
                            }

                            // context.read<GetMyCartCubit>().getMyCart();
                          },
                          child: Container(
                            width: 56.w,
                            height: 43.h,
                            decoration: BoxDecoration(
                              color: ColorManager.grayCA,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Center(
                              child: state is AddProductToCartLoading
                                  ? const CircularProgressIndicator()
                                  : Image.asset(
                                      state is AddProductToCartSuccess
                                          ? Assets.imagesRemoveCart
                                          : Assets.imagesCartIcon,
                                      color: !value
                                          ? ColorManager.mainColor
                                          : null,
                                      width: 24.w,
                                      height: 24.h,
                                    ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                20.hs,
                InkWell(
                  child: Container(
                    width: 219.w,
                    height: 43.h,
                    decoration: BoxDecoration(
                        color: ColorManager.mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(8.r))),
                    child: Center(
                      child: Text(
                        "Buy Now",
                        style: Styles.font20W700
                            .copyWith(fontSize: 21, color: Colors.white),
                      ),
                    ),
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
