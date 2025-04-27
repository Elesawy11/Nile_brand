import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'widgets/brand_product_widget.dart';
import 'widgets/owner_search_widget_with_logo.dart';

class OwnerHomeView extends StatelessWidget {
  const OwnerHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            21.vs,
            const OwnerSearchWidgetWithLogo(),
            53.vs,
            Expanded(
              child: GridView.builder(
                // shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.w,
                  mainAxisExtent: 180.h,
                  mainAxisSpacing: 10.w,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const BrandProductWidget();
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
