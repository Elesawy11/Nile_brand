import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../core/utils/assets.dart';

class CategoryShimeer extends StatelessWidget {
  const CategoryShimeer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black.withValues(alpha: 0.04),
      highlightColor: Colors.black.withValues(alpha: 0.2),
      child: SizedBox(
        height: 120.h,
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 120.h,
              child: const CategoryItemShimmer(),
            );
          },
        ),
      ),
    );
  }
}

class CategoryItemShimmer extends StatelessWidget {
  const CategoryItemShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 18.w, bottom: 7.h),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.asset(
              Assets.imagesNotFoundImage,
              height: 87.r,
              width: 87.r,
              fit: BoxFit.cover,
            ),
          ),
          verticalSpace(12),
          Container(
            width: 87.w,
            height: 8.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12.r,
                ),
                color: ColorManager.grayCA),
          ),
        ],
      ),
    );
  }
}
