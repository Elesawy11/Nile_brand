import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';

class EmptyWishlistView extends StatelessWidget {
  const EmptyWishlistView({super.key, this.message});
  final String? message;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          40.vs,
          Image.asset(
            Assets.imagesEmptyWhislist,
            width: 300.w,
            height: 300.h,
            fit: BoxFit.fill,
          ),
          20.vs,
          Padding(
            padding: 50.allEdgeInsets,
            child:  Text(
              textAlign: TextAlign.center,
              message?? "Start exploring and add your favorite items to your Wishlist...",
              style:const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: ColorManager.mainColor),
            ),
          )
        ],
      ),
    );
  }
}
