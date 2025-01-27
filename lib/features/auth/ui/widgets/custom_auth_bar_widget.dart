import 'package:flutter/material.dart';
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
        verticalSpace(80),
        Text(
          title,
          style: Styles.font43W700,
        ),
        verticalSpace(16),
        Text(
          subTitle,
          style: Styles.font20W400.copyWith(
            color: Colors.black.withValues(
              alpha: 0.6,
            ),
          ),
        )
      ],
    );
  }
}
