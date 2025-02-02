import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'widgets/my_cart_item_widget.dart';
import 'widgets/top_view_bar_widget.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Column(
          children: [
            const TopViewBarWidget(
              tiltel: 'My Cart',
            ),
            verticalSpace(28),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.only(left: 12.w, right: 12.w, bottom: 18.h),
                    child: const MyCartItemWidget(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
