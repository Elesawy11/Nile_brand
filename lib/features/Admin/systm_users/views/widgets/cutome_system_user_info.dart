import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';

class CustomeSystemUserInfo extends StatelessWidget {
  const CustomeSystemUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.updateSystemUser);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        width: 291.w,
        height: 75.h,
        decoration: BoxDecoration(
          color: ColorManager.grayD9,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 50.w,
                  height: 50.h,
                  child: Image.asset(Assets.imagesProfileImage),
                )
                ,
                13.hs,
                Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                18.vs,
                Text(
                  "User Name",
                  style: Styles.font20W400
                      .copyWith(fontSize: 16.sp,color: const Color.fromARGB(255, 37, 37, 37)),
                ),
                 Text(
                  "Owner",
                  style: Styles.font20W400
                      .copyWith(fontSize: 16.sp,color: const Color.fromARGB(255, 37, 37, 37)),
                ),
              ],
            ),
            20.hs,

              ],
            ),
            20.hs,
            
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 19.h,
                width: 19.w,
                child: Image.asset(Assets.imagesDeleteIcon),
              ),
            )
          ],
        ),
      ),
    );
  }
}
