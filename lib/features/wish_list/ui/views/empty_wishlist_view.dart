import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';

class EmptyWishlistView extends StatelessWidget {
  const EmptyWishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            
            children: [

              verticalSpace(40.h),
             Image.asset(Assets.imagesEmptyWhislist,width: 300.w,height: 300.h,fit: BoxFit.fill,),

              verticalSpace(20.h),

              Padding(
                padding:  EdgeInsets.all(50.w),
                child: const Text(
                  textAlign: TextAlign.center,
                  "Start exploring and add your favorite items to your Wishlist...",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: ColorManager.mainColor),
                  ),
              )
            ],
          ),
        );
  }
}