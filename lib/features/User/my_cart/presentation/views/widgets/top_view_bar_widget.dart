import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/spacer.dart';
import '../../../../../../core/utils/styles.dart';

class TopViewBarWidget extends StatelessWidget {
  const TopViewBarWidget({
    super.key,
    required this.tiltel,
  });
  final String tiltel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        horizontalSpace(24),
        InkWell(
          onTap: () => context.pop(),
          child: Image.asset(
            Assets.imagesArrowLeftIcon,
            width: 24.r,
            height: 24.r,
          ),
        ),
        const Spacer(),
        Text(
          tiltel,
          style: Styles.font24W500,
        ),
        const Spacer(),
      ],
    );
  }
}
