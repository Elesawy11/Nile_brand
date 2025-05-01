import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';


class PriceButton extends StatelessWidget {
  const PriceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // price
        Text(
          "700 LE",
          style: Styles.font20W600.copyWith(fontSize: 18.sp,color: ColorManager.mainColor),
        ),
        Spacer(),
        InkWell(
          onTap: (){},
          child: Container(
            width: 90.w,
            height: 30.h,
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            decoration: BoxDecoration(
              color:  ColorManager.mainColor,
              borderRadius: BorderRadius.all(Radius.circular(12.r))
            ),
            
            child: Center(
              child: Text(
                "Add To Cart",
                style: Styles.font14W500.copyWith(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
