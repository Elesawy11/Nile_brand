import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/custom_auth_bar_widget.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/have_acount_text.dart';

import '../cubits/forgot_pass/forgot_pass_cubit.dart';
import 'widgets/forgot_pass_bloc_listener.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ForgotPassCubit>();
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
              Form(
                key: cubit.formKey,
                child: AppTextFormField(
                  controller: cubit.emailController,
                  labelText: 'E-mail',
                  hintText: 'example@gmail.com',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                  },
                ),
              ),
              verticalSpace(76),
              AppTextButton(
                text: 'Password Reset',
                onPressed: () => validateThenDoResetPass(context),
                // onPressed: () => context.push(Routes.verificationScreen),
                backgroundColor: ColorManager.mainColor,
              ),
              verticalSpace(230),
              const HaveAcountText(),
              ForgotPassBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoResetPass(BuildContext context) {
    if (context.read<ForgotPassCubit>().formKey.currentState!.validate()) {
      context.read<ForgotPassCubit>().emitforgotPassState();
    }
  }
}
