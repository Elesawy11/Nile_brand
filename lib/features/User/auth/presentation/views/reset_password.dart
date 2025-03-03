import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/custom_auth_bar_widget.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/have_acount_text.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/password_field.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);
  final ValueNotifier<bool> viewRestPass = ValueNotifier<bool>(true);
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
                  title: "Reset Password",
                  subTitle:
                      "Enter your new password twice below to reset a new password."),
              verticalSpace(92),
              PasswordField(
                  viewPass: viewPass,
                  labelText: "Password",
                  hintText: "password"),
              verticalSpace(35),
              PasswordField(
                  viewPass: viewRestPass,
                  labelText: 'Re-enter new Password',
                  hintText: 're-enter new password'),
              verticalSpace(57),
              SizedBox(
                height: 50.h,
                width: 420.w,
                child: Padding(
                  padding: 50.ph,
                  child: AppTextButton(
                    text: 'Reset Password',
                    onPressed: () {
                      context.go(Routes.verificationScreen);
                    },
                    backgroundColor: ColorManager.mainColor,
                  ),
                ),
              ),
              verticalSpace(160),
              const HaveAcountText(),
            ],
          ),
        ),
      ),
    );
  }
}
