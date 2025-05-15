import 'package:flutter/material.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';

class CustomAuthWelcomeWidget extends StatelessWidget {
  const CustomAuthWelcomeWidget({
    super.key,
    required this.title,
    this.icon,
    this.color,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  final IconData? icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(50),
        Text(
          title,
          style: Styles.font35W700,
        ),
        verticalSpace(16),
        Text(
          subTitle,
          style: Styles.font20W400.copyWith(
            fontWeight: FontWeight.w500,
            color: ColorManager.subText,
          ),
        )
      ],
    );
  }
}
