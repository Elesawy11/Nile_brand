import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Admin/system_feedback/data/model/system_feedback_model.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class CustomSystemFeedback extends StatelessWidget {
  final SystemFeedbackModel feed;
  const CustomSystemFeedback({super.key, required this.feed});

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
            child: CircleAvatar(
              radius: 24.r,
              backgroundImage:  feed.user == null? AssetImage(Assets.imagesProfileImage) : NetworkImage(feed.user!.userImage),

            ),
          ),
          7.hs,
          Expanded(
            child: Column(

              children: [
                9.vs,
                SizedBox(
                  width: 156.w,
                  height: 20.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(
                        5,
                        (index) {
                          if (index < feed.rating!) {
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
                        feed.comment!
                       
                       ) )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
