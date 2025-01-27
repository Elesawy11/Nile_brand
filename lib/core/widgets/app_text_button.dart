import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
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
          side: BorderSide(
            color: borderColor ?? ColorManager.mainColor,
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(
            40.r,
          ),
        ),
      ),
      child: Text(
        text,
        style: Styles.font16W500.copyWith(
          color: textColor ?? Colors.white,
        ),
      ),
    );
  }
}
