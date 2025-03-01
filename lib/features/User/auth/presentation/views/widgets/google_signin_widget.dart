import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';

class GoogleSigninWidget extends StatelessWidget {
  const GoogleSigninWidget({
    super.key,
    this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
  });
  final void Function()? onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(
          double.infinity,
          52.h,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            40.r,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.imagesGoogle,
            width: 24.w,
            height: 24.h,
          ),
          horizontalSpace(16),
          Text(
            text,
            style: Styles.font20W400.copyWith(
              color: ColorManager.subText,
            ),
          ),
        ],
      ),
    );
  }
}
