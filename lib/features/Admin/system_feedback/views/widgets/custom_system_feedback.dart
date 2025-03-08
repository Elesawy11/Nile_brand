import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class CustomSystemFeedback extends StatelessWidget {
  const CustomSystemFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 111.h,
      width: 291.w,
      margin: 7.allEdgeInsets,
      padding: 8.allEdgeInsets,
      decoration: BoxDecoration(
          color: ColorManager.grayD9,
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 55.w,
              height: 55.h,
              child: Image.asset(Assets.imagesProfileImage),
            ),
          ),
          5.hs,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
                SizedBox(
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
                7.vs,
                Flexible(
                    child: Text(
                        style: Styles.font12W300,
                        maxLines: 3,
                        "The platform looks modern and easy to use. I love the idea of supporting Egyptian startups and discovering unique handmade products in one place."))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
