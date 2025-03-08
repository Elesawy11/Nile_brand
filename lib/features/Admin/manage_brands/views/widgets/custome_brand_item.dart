import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class CustomeBrandItem extends StatelessWidget {
  const CustomeBrandItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.r,
      height: 157.r,
      decoration: const BoxDecoration(
        color: ColorManager.grayD9,
      ),
      padding: EdgeInsets.only(top: 5.h, left: 8.r, right: 8.r),
      child: Center(
        child: SizedBox(
          width: 140.r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/test_brand.png",
                width: 138.r,
                height: 125.r,
                fit: BoxFit.fill,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Elegant Craft',
                  style: Styles.font12W300.copyWith(color:const Color(0xFF242526)),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 35.r,
                  child: InkWell(
                    
                    onTap: () {},
                    child: Image.asset(
                      Assets.imagesDeleteIcon,
                      width: 16.r,
                      height: 16.r,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
