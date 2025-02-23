import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/auth/ui/views/widgets/custom_auth_bar_widget.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);
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
              ValueListenableBuilder<bool>(
                  valueListenable: viewPass,
                  builder: (context, value, child) {
                    return AppTextFormField(
                      labelText: 'Password',
                      hintText: 'password',
                      isObscureText: viewPass.value,
                      suffixIcon: IconButton(
                          onPressed: () {
                            viewPass.value = !value;
                          },
                          icon: viewPass.value
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined)),
                      validator: (p0) {},
                    );
                  }),
              verticalSpace(35),
              ValueListenableBuilder<bool>(
                  valueListenable: viewPass,
                  builder: (context, value, child) {
                    return AppTextFormField(
                      labelText: 'Re-enter new Password',
                      hintText: 're-enter new password',
                      isObscureText: viewPass.value,
                      suffixIcon: IconButton(
                          onPressed: () {
                            viewPass.value = !value;
                          },
                          icon: viewPass.value
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined)),
                      validator: (p0) {},
                    );
                  }),
              verticalSpace(57),
              AppTextButton(
                text: 'Reser Password',
                onPressed: () {
                  context.push(Routes.verificationScreen);
                },
                backgroundColor: ColorManager.mainColor,
              ),
              verticalSpace(160),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have account? ',
                    style: Styles.font14W400.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => context.push(Routes.creatAccount),
                    child: Text(
                      'sign up now',
                      style: Styles.font14W500.copyWith(
                        color: ColorManager.blue33,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
