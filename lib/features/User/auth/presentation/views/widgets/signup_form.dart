import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';
import '../../cubits/signup_cubit/sign_up_cubit.dart';
import 'password_field.dart';
import 'rule_selector.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.viewPass,
    required this.viewRestPass,
  });

  final ValueNotifier<bool> viewPass;
  final ValueNotifier<bool> viewRestPass;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
            child: AppTextFormField(
              labelText: 'Name',
              hintText: 'user_name',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid name';
                }
              },
              controller: cubit.nameController,
            ),
          ),
          30.vs,
          SizedBox(
            height: 50.h,
            child: AppTextFormField(
              labelText: 'E-mail',
              hintText: 'example@gmail.com',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid e-mail';
                }
              },
              controller: cubit.emailController,
            ),
          ),
          30.vs,
          PasswordField(
            viewPass: viewPass,
            labelText: "Password",
            hintText: "password",
            controller: cubit.passwordController,
          ),
          30.vs,
          PasswordField(
            viewPass: viewRestPass,
            labelText: 'Re-enter Password',
            hintText: 're-enter password',
            controller: cubit.confirmPasswordController,
          ),
          20.vs,
          Text(
            "Rule",
            style: Styles.font20W400.copyWith(
              color: ColorManager.mainText,
            ),
          ),
          const RuleSelector(),
        ],
      ),
    );
  }
}
