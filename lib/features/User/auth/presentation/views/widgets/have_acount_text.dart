import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';

class HaveAcountText extends StatelessWidget {
  const HaveAcountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have account? ',
          style: Styles.font14W400.copyWith(
            color: Colors.black,
          ),
        ),
        InkWell(
          onTap: () => context.push(Routes.creatAccount),
          child: Text(
            'sign up now',
            style: Styles.font14W500.copyWith(
              fontWeight: FontWeight.w700,
              color: ColorManager.mainColor,
            ),
          ),
        ),
      ],
    );
  }
}
