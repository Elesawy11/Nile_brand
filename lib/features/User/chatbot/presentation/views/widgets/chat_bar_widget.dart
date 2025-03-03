import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';

class ChatBarWidget extends StatelessWidget {
  const ChatBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.r),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: ColorManager.lightGrey,
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 2.0),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hello chatbot,how are you today?',
              style: Styles.font13W700.copyWith(
                color: ColorManager.blue33,
              ),
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                Assets.svgImagesSendIcon,
                width: 24.r,
                height: 24.r,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
