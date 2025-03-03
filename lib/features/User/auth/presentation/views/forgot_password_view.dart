import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/custom_auth_bar_widget.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/have_acount_text.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAuthWelcomeWidget(
                title: 'Forgot Password?',
                subTitle:
                    'Enter your email address to get the password reset link.',
              ),
              verticalSpace(54),
              AppTextFormField(
                labelText: 'E-mail',
                hintText: 'email',
                validator: (p0) {},
              ),
              verticalSpace(76),
              AppTextButton(
                text: 'Password Reset',
                onPressed: () =>  context.go(Routes.resetPassword),
                backgroundColor: ColorManager.mainColor,
              ),
              verticalSpace(230),
              const HaveAcountText()
            ],
          ),
        ),
      ),
    );
  }
}
