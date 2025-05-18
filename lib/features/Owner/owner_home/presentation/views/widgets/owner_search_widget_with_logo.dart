import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';

class OwnerSearchWidgetWithLogo extends StatelessWidget {
  final String brandLogo;
  const OwnerSearchWidgetWithLogo({
    super.key,
    required this.brandLogo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 5.w, left: 5.w),
          width: 275.w,
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
        12.hs,
        CircleAvatar(
          radius: 20.r,
          backgroundColor: Colors.grey.shade200,
          child: ClipOval(
            child: Image.network(
              "https://nile-brands-backend.up.railway.app/brands/$brandLogo",
              fit: BoxFit.cover,
              width: 40.r,
              height: 40.r,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.error, size: 20.r),
            ),
          ),
        )
      ],
    );
  }
}
