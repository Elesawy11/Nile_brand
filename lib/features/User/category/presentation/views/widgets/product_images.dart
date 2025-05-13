import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';

class ProductImages extends StatefulWidget {
  final ValueNotifier<int> selectedColor;
  const ProductImages({super.key, required this.selectedColor});

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 204.h,
        width: 175.w,
        padding: EdgeInsets.only(right: 11.w, left: 11.w, top: 18.h),
        decoration: BoxDecoration(
          color: Color(0xffF5F7F8),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withValues(alpha: .4),
                offset: Offset(1, 1),
                blurRadius: 4.r)
          ],
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                Assets.imagesFavoriteIcon,
              ),
            ),
            Image.asset(
              "assets/images/dress.png",
              width: 120.w,
              height: 120.h,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 100.w,
                // height: 10.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...List.generate(
                      5,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 10.w),
                          child: Container(
                            height: 7.h,
                            width: 7.w,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7.r)),
                                color:widget.selectedColor.value == index
                                    ? ColorManager.mainColor
                                    : ColorManager.grayD9),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
