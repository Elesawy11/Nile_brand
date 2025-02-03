import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'widgets/cart_checkout_widget.dart';
import 'widgets/my_cart_item_widget.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'My Cart',
                  style: Styles.font24W500,
                ),
              ),
              verticalSpace(18),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: 12.w, right: 12.w, bottom: 18.h),
                      child: const MyCartItemWidget(),
                    );
                  },
                ),
              ),
              verticalSpace(34),
              Container(
                height: 256.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(41.r),
                    topRight: Radius.circular(41.r),
                  ),
                  border: const Border(
                    top: BorderSide(
                      color: ColorManager.grayCA,
                      width: 3,
                    ),
                  ),
                ),
                child: const CartCheckoutWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
