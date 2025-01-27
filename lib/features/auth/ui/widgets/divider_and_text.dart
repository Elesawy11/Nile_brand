import 'package:flutter/material.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/styles.dart';

class DividerAndText extends StatelessWidget {
  const DividerAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.25,
          child: const Divider(
            color: ColorManager.gray76,
            thickness: 1,
          ),
        ),
        Text(
          ' or sign in with ',
          style: Styles.font16W400.copyWith(
            color: ColorManager.gray76,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.25,
          child: const Divider(
            color: ColorManager.gray76,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
