import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';

class NotificationAndSearchWidget extends StatelessWidget {
  const NotificationAndSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        GestureDetector(
        
          child: Image.asset(
            Assets.imagesMessageIcon,
            width: 23.w,
            height: 23.h,
            color: Colors.black,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 5.w,left: 5.w),
          width: 293.w,
          height: 36.h,
          child: AppTextFormField(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
            cursorHeight: 22.h,
            isLabled: false,
            hintText: 'what are you looking for ?',
            backgroundColor: Colors.white,
            validator: (p0) {},
            prefixIcon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
            raduis: 6.r,
            hintStyle: Styles.font17W300,
          ),
        ),
        GestureDetector(
          child: Image.asset(
            Assets.imagesNotificationIcon,
            width: 23,
            height: 23,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
