import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/color_manager.dart';

class IncreaseAndDecreaseIconWidget extends StatelessWidget {
  const IncreaseAndDecreaseIconWidget({
    super.key,
    required this.icon,
    this.onTap,
  });
  final IconData icon;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.grayD9,
        borderRadius: BorderRadius.circular(43.r),
      ),
      child: InkWell(
        onTap: onTap,
        child: Icon(
          icon,
          color: Colors.black,
          size: 14.r,
        ),
      ),
    );
  }
}
