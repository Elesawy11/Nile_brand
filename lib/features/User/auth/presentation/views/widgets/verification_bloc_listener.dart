import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/verify_code_cubit/verify_code_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/verify_code_cubit/verify_code_state.dart';
import '../../../../../../core/helpers/setup_error_state.dart';
import '../../../../../../core/routing/routes.dart';

class VerificationBlocListener extends StatelessWidget {
  const VerificationBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyCodeCubit, VerifyCodeState>(
      listenWhen: (previous, current) =>
          current is VerifyLoading ||
          current is VerifySuccess ||
          current is VerifyError,
      listener: (context, state) {
        switch (state) {
          case VerifyLoading():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.mainColor,
                ),
              ),
            );

            break;
          case VerifySuccess():
            context.pop();
            Future.delayed(const Duration(seconds: 2)).then(
              (value) => context.push(
                Routes.resetPassword,
              ),
            );

            break;
          case VerifyError():
            setupErrorState(context, state.error);
            break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
