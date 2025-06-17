import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class ExistingProducts extends StatelessWidget {
  const ExistingProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(Routes.productReviews),
      child: Container(
        width: 147.r,
        height: 157.r,
        clipBehavior: Clip.hardEdge,
        decoration:  BoxDecoration(
          color: ColorManager.grayD9,
          borderRadius: BorderRadius.all(Radius.circular(20.r))
        ),
        child: Column(
          
          children: [
            Image.asset(
              Assets.imagesBrandItem,
              width: 159.w,
              height: 120.w,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.only(top:5.h,left:5.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'T-shirts Cotton',
                  style: Styles.font12W300.copyWith(fontSize: 15.sp,fontWeight: FontWeight.w600,height: 0.h),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:5.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Brand Name',
                  style: Styles.font12W300.copyWith(fontSize: 15.sp,fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              width: 140.r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '250 L.E',
                    style: Styles.font12W500.copyWith(fontWeight: FontWeight.w600),
                  ),
                  50.hs,
                  InkWell(
                    
                    onTap: () {},
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
      ),
    );
  }
}