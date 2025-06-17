import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:readmore/readmore.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';

class DescreptionInfo extends StatelessWidget {
  const DescreptionInfo({super.key, this.description});
  final String? description;
  @override
  Widget build(BuildContext context) {
    return Column(
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
              InkWell(
                onTap: () {},
                child: Container(
                  width: 56.w,
                  height: 43.h,
                  decoration: BoxDecoration(
                    color: ColorManager.grayCA,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Center(
                    child: Image.asset(
                      Assets.imagesCartIcon,
                      color: ColorManager.mainColor,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ),
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
    );
  }
}
