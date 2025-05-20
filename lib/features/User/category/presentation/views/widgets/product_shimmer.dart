import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';

class ProductShimmer extends StatelessWidget {
  const ProductShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black.withValues(alpha: 0.04),
      highlightColor: Colors.black.withValues(alpha: 0.2),
      child: Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.w,
            mainAxisSpacing: 4.w,
            childAspectRatio: 2 / 2.3,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return CustomItemShimmer();
          },
        ),
      ),
    );
  }
}

class CustomItemShimmer extends StatelessWidget {
  const CustomItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: ColorManager.grayCA,
      ),
      child: Column(
        children: [
          SizedBox(
            child: Image.asset(
              Assets.imagesNoImage,
              fit: BoxFit.fill,
            ),
          ),
          verticalSpace(12),
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(16.r)),
            height: 20.h,
          ),
          verticalSpace(12),
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(16.r)),
            height: 20.h,
            child: Text(
              'Name Of Product ',
              style: Styles.font17W500,
            ),
          )
        ],
      ),
    );
  }
}
