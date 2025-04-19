import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/spacer.dart';
import '../../cubits/reset_pass_cubit/reset_pass_cubit.dart';
import 'password_field.dart';

class ResetPassForm extends StatelessWidget {
  const ResetPassForm({
    super.key,
    required this.viewPass,
    required this.viewRestPass,
  });

  final ValueNotifier<bool> viewPass;
  final ValueNotifier<bool> viewRestPass;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ResetPassCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          PasswordField(
            controller: cubit.newPasswordController,
            viewPass: viewPass,
            labelText: "Password",
            hintText: "password",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              } else if (value.length < 8) {
                return 'Password must be at least 8 characters long';
              }
            },
          ),
          verticalSpace(35),
          PasswordField(
            controller: cubit.confirmPasswordController,
            viewPass: viewRestPass,
            labelText: 'Re-enter new Password',
            hintText: 're-enter new password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please re-enter your password';
              } else if (value != cubit.newPasswordController.text) {
                return 'Passwords do not match';
              }
              
            },
          ),
        ],
      ),
    );
  }
}
