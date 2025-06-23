import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';
import '../../cubits/login_cubit/login_cubit.dart';
import 'password_field.dart';

class CustomLoginForm extends StatefulWidget {
  const CustomLoginForm({
    super.key,
  });

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          SizedBox(
            // height: 50.h,
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
          35.vs,
          PasswordField(
            controller: cubit.passwordController,
            viewPass: viewPass,
            labelText: "Password",
            hintText: "password",
          ),
        ],
      ),
    );
  }
}
