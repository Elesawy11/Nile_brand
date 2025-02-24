import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.imagesStart,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(),
                Image.asset(
                  Assets.imagesLogo,
                  width: 150.w,
                  height: 218.h,
                ),
                verticalSpace(107),
                AppTextButton(
                  text: 'Login',
                  textColor: Colors.black,
                  borderColor: Colors.black,
                  onPressed: () => context.push(Routes.login),
                ),
                verticalSpace(16),
                AppTextButton(
                  text: 'Get Start',
                  onPressed: () {},
                  backgroundColor: ColorManager.mainColor,
                ),
                verticalSpace(37),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have account? ',
                      style: Styles.font14W400.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () => context.push(Routes.creatAccount),
                      child: Text(
                        'Create now',
                        style: Styles.font14W500.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(45)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// done
