import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/auth/ui/widgets/custom_auth_bar_widget.dart';
import 'package:nile_brand/features/auth/ui/widgets/divider_and_text.dart';
import 'package:nile_brand/features/auth/ui/widgets/google_signin_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAuthWelcomeWidget(
                title: 'Login',
                subTitle: 'Welcome back to the app',
              ),
              verticalSpace(54),
              AppTextFormField(
                labelText: 'E-mail',
                hintText: 'email',
                validator: (p0) {},
              ),
              verticalSpace(35),
              AppTextFormField(
                labelText: 'Password',
                hintText: 'password',
                validator: (p0) {},
              ),
              verticalSpace(10),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => context.go(Routes.forgotPassword),
                  child: Text(
                    'Forgot Password?',
                    style: Styles.font14W400.copyWith(
                      color: ColorManager.red76,
                    ),
                  ),
                ),
              ),
              verticalSpace(47),
              AppTextButton(
                text: 'Login',
                onPressed: () {},
                backgroundColor: ColorManager.mainColor,
              ),
              verticalSpace(35),
              DividerAndText(),
              verticalSpace(36),
              GoogleSigninWidget(
                text: 'Continue with Google',
                backgroundColor: ColorManager.grayE4,
              ),
              verticalSpace(54),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Create an account',
                    style: Styles.font20W600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
