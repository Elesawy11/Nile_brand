import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';

import '../../../../../../core/utils/assets.dart';

class ReviewsInfo extends StatelessWidget {
  const ReviewsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 380.w,
            height: 57.h,
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            decoration: BoxDecoration(
              color: ColorManager.grayD9,
              borderRadius: BorderRadius.circular(11.r),
            ),
            child: Row(
              children: [
                Image.asset(
                  Assets.imagesProfileImage,
                  height: 32.h,
                  width: 32.w,
                ),
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Add review",
                        helperStyle: Styles.font16W500
                            .copyWith(color: ColorManager.grayD9),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withValues(alpha: 0))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withValues(alpha: 0))),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withValues(alpha: 0)))),
                  ),
                ),
                InkWell(
                    child: Icon(
                  Icons.send_outlined,
                  size: 24.w,
                  color: ColorManager.mainColor,
                ))
              ],
            ),
          ),
          10.vs,
          ...List.generate(
            8,
            (index) {
              return Container(
                //     width: 380.w,
                // height: 57.h,
                margin: EdgeInsets.only(bottom: 10.h),
                padding: EdgeInsets.symmetric(horizontal: 7.w),
                decoration: BoxDecoration(
                  color: ColorManager.grayD9,
                  borderRadius: BorderRadius.circular(13.r),
                ),
              
                child: Row(
                  children: [
                    Image.asset(
                      Assets.imagesProfileImage,
                      height: 32.h,
                      width: 32.w,
                    ),
                    10.hs,
                    Flexible(
                      child: Center(
                        child: Text(
                                      
                          
                          "I recently purchased this black dress, and I’m absolutely in love with it! The fabric feels high-quality",
                          style: Styles.font12W500.copyWith(color: ColorManager.gray8C),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
