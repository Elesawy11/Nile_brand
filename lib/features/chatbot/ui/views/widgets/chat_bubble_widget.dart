import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';

class ChatBubbleWidget extends StatelessWidget {
  const ChatBubbleWidget({
    super.key,
    this.bottomLeft,
    this.topRight,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
  });
  final Radius? bottomLeft;
  final Radius? topRight;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 13.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.r),
            bottomLeft: bottomLeft ?? Radius.zero,
            bottomRight: Radius.circular(25.r),
            topRight: topRight ?? Radius.zero,
          ),
        ),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.8,
          minHeight: 54.h,
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.font13W700.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
