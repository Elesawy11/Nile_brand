import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';

import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/app_text_button.dart';

class PriceButton extends StatelessWidget {
  const PriceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // price
        Text(
          "700 le",
          style: Styles.font20W600,
        ),
        47.hs,
        SizedBox(
          width: 110.w,
          height: 40.h,
          child: AppTextButton(
            borderRadius: 12.r,
            text: "Add to Cart",
            backgroundColor: ColorManager.mainColor,
            textColor: Colors.white,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
