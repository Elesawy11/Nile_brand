import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';

import '../../../../../../core/utils/styles.dart';

class CheckoutTextWidget extends StatelessWidget {
  const CheckoutTextWidget({
    super.key,
    required this.subtotal,
    required this.total,
    this.subColor,
  });
  final String subtotal, total;
  final Color? subColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            subtotal,
            style: Styles.font20W400.copyWith(
              color: subColor,
            ),
          ),
          Text(
            total,
            style: Styles.font20W400.copyWith(
                color: ColorManager.mainColor, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
