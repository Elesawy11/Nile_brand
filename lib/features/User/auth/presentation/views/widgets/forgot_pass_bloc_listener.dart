import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/forgot_pass/forgot_pass_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/forgot_pass/forgot_pass_state.dart';
import '../../../../../../core/helpers/setup_error_state.dart';
import '../../../../../../core/helpers/show_succes_dialog.dart';
import '../../../../../../core/routing/routes.dart';

class ForgotPassBlocListener extends StatelessWidget {
  const ForgotPassBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPassCubit, ForgotPassState>(
      listenWhen: (previous, current) =>
          current is ForgotLoading ||
          current is ForgotSuccess ||
          current is ForgotError,
      listener: (context, state) {
        switch (state) {
          case ForgotLoading():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.mainColor,
                ),
              ),
            );

            break;
          case ForgotSuccess():
            context.pop();
            showSuccessDialog(
                message: 'Check your email for the verification code.',
                context, onPressed: () {
              context.go(Routes.verificationScreen);
            });
            break;
          case ForgotError():
            setupErrorState(context, state.error);
            break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
