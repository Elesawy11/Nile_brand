import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class CustomeProductReview extends StatelessWidget {
  const CustomeProductReview({super.key});

  @override
  Widget build(BuildContext context) {
    
        return Container(
          margin: 7.allEdgeInsets,
          padding: 8.allEdgeInsets,
          decoration: BoxDecoration(
              color: ColorManager.grayD9,
              borderRadius: BorderRadius.circular(10.r)),
          height: 92.h,
          width: 301.w,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 50.w,
                    height: 50.h,
                    child: Image.asset(Assets.imagesProfileImage),
                  ),
                  4.hs,
                  Expanded(
                      child: Text(
                          style: Styles.font12W300,
                          'I recently purchased this black dress, and I’m absolutely in love with it! The fabric feels high-quality')),
                  SizedBox(
                    height: 19.h,
                    width: 19.w,
                    child: Image.asset(Assets.imagesDeleteIcon),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 156.w,
                  height: 20.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(
                        5,
                        (index) {
                          if (index < 3) {
                            return Image.asset(Assets.imagesSelectedStar);
                          }

                          return Image.asset(Assets.imagesUnselectedStar);
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      
    
  }
}
