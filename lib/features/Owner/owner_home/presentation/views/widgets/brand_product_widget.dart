import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';

class BrandProductWidget extends StatelessWidget {
  const BrandProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147.r,
      height: 157.r,
      decoration: const BoxDecoration(
        color: ColorManager.grayD9,
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.r),
      child: Center(
        child: SizedBox(
          width: 120.r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.imagesBrandItem,
                width: 120.r,
                height: 113.r,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'T-shirts Cotton',
                  style: Styles.font12W300,
                ),
              ),
              SizedBox(
                width: 120.r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '250 L.E',
                      style: Styles.font12W500,
                    ),
                    Image.asset(
                      Assets.imagesDeleteIcon,
                      width: 16.r,
                      height: 16.r,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
