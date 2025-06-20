import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/cubit/get_my_cart_cubit.dart';
import 'package:nile_brand/features/User/my_cart/presentation/cubits/cubit/get_my_cart_state.dart';
import 'package:nile_brand/features/User/wish_list/presentation/views/widgets/empty_wishlist_view.dart';
import 'widgets/cart_checkout_widget.dart';
import 'widgets/my_cart_item_widget.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<GetMyCartCubit>().getMyCart();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        title: Text(
          'My Cart',
          style: Styles.font24W500.copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: BlocBuilder<GetMyCartCubit, GetMyCartState>(
          builder: (context, state) {
            return state is GetMyCartLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : state is GetMyCartSuccess
                    ? CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 12.w),
                                child: SizedBox(
                                  width: 100.w,
                                  height: 38.h,
                                  child: AppTextButton(
                                    text: 'clear all',
                                    onPressed: () {},
                                    backgroundColor: ColorManager.mainColor,
                                    borderRadius: 12.r,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: verticalSpace(18),
                          ),
                          SliverList.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  left: 12.w,
                                  right: 12.w,
                                  bottom: 18.h,
                                ),
                                child: MyCartItemWidget(
                                  cartProduct: state.productsList[index],
                                ),
                              );
                            },
                            itemCount: state.myCart.cartItems?.length ?? 0,
                          ),
                          SliverToBoxAdapter(
                            child: 18.vs,
                          ),
                          SliverToBoxAdapter(
                            child: Container(
                              height: 256.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.r),
                                  topRight: Radius.circular(40.r),
                                ),
                                border: const Border(
                                  top: BorderSide(
                                    color: ColorManager.grayCA,
                                    width: 3,
                                  ),
                                ),
                              ),
                              child: CartCheckoutWidget(
                                price: state.myCart.totalPrice.toString(),
                              ),
                            ),
                          ),
                        ],
                      )
                    : state is GetMyCartError
                        ? const EmptyWishlistView(
                            message:
                                'Start exploring and add your product items to your cart...',
                          )
                        : const SizedBox();
          },
        ),
      ),
    );
  }
}
