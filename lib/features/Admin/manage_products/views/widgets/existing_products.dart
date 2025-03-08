import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class ExistingProducts extends StatelessWidget {
  const ExistingProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(Routes.productReviews),
      child: Container(
        width: 147.r,
        height: 157.r,
        decoration: const BoxDecoration(
          color: ColorManager.grayD9,
        ),
        padding: EdgeInsets.only(top: 5.h,left: 12.r,right: 12.r),
        child: Center(
          child: SizedBox(
            width: 130.r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.imagesBrandItem,
                  width: 130.r,
                  height: 116.r,
                  fit: BoxFit.fill,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'T-shirts Cotton',
                    style: Styles.font12W300,
                  ),
                ),
                SizedBox(
                  width: 140.r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '250 L.E',
                        style: Styles.font12W500,
                      ),
                      50.hs,
                      InkWell(
                        //TODO: delete method
                        onTap: () {},
                        child: Image.asset(
                          Assets.imagesDeleteIcon,
                          width: 16.r,
                          height: 16.r,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}