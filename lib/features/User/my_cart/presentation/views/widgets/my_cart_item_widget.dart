import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/spacer.dart';
import '../../../../../../core/utils/styles.dart';
import 'increase_and_decrease_icon_widget.dart';

class MyCartItemWidget extends StatelessWidget {
  const MyCartItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.9,
      height: 144.h,
      clipBehavior: Clip.hardEdge,
      // padding: EdgeInsets.only(right: 5.w),
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,0),
            color: Colors.black.withValues(alpha: .4),
            blurRadius: 4.r
          )
        ]

      ),
      child: Row(
        children: [
          Image.asset(
            Assets.imagesTestItem,
            width: 127.w,
            height: 144.h,
            fit: BoxFit.cover,
          ),
          horizontalSpace(6),
          SizedBox(
            width: MediaQuery.of(context).size.width - (127.w + 12 * 2.w + 6.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 187.w,
                      child: Text(
                        'Graceful Charm Dress',
                        overflow: TextOverflow.ellipsis,
                        style: Styles.font20W400,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.close,
                        color: const Color.fromARGB(255, 194, 30, 19),
                        size: 19.r,
                      ),
                    ),
                    7.hs
                  ],
                ),
                verticalSpace(7),
                Text(
                  'clothes',
                  style: Styles.font16W400.copyWith(
                    color: ColorManager.subText,
                  ),
                ),
                Expanded(
                  child: Text(
                    
                    'Elegant black dress featuring a sleek silhouette, designed with premium',
                    style: Styles.font16W400,
                  ),
                ),
                // const Spacer(),
                SizedBox(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '120.00 LE',
                        style: Styles.font20W400.copyWith(color: ColorManager.mainColor,fontWeight: FontWeight.w600,fontSize: 18.sp),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          IncreaseAndDecreaseIconWidget(
                            onTap: () {},
                            icon: Icons.add,
                          ),
                          horizontalSpace(5),
                          Text(
                            '1',
                            style: Styles.font14W400,
                          ),
                          horizontalSpace(5),
                          IncreaseAndDecreaseIconWidget(
                            onTap: () {},
                            icon: Icons.remove,
                          ),
                        ],
                      ),
                      7.hs,
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
