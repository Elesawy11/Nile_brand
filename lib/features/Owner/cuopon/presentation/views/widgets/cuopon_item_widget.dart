import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';

class CuoponItemWidget extends StatelessWidget {
  const CuoponItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(Routes.updateCuopon),
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.grayD9,
          borderRadius: BorderRadius.circular(8.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        margin: EdgeInsets.only(top: 26.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SUMMER2024',
                  style: Styles.font20W400.copyWith(
                    color: ColorManager.subText,
                  ),
                ),
                Text(
                  '31-4-2025',
                  style: Styles.font20W400.copyWith(
                    color: ColorManager.subText,
                  ),
                ),
              ],
            ),
            Image.asset(
              Assets.imagesDeleteIcon,
              height: 24.r,
              width: 24.r,
            ),
          ],
        ),
      ),
    );
  }
}
