import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';

class NotificationAndSearchWidget extends StatelessWidget {
  const NotificationAndSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.mark_email_unread_outlined,
            color: Colors.black,
            size: 20.r,
          ),
        ),
        SizedBox(
          width: 293.w,
          height: 36.h,
          child: AppTextFormField(
            isLabled: false,
            hintText: 'what are you looking for ?',
            validator: (p0) {},
            prefixIcon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
            raduis: 6.r,
            hintStyle: Styles.font17W300,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_outlined,
            color: Colors.black,
            size: 20.r,
          ),
        ),
      ],
    );
  }
}
