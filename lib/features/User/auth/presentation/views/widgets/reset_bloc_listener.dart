import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/cubit/reset_pass_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/cubit/reset_pass_state.dart';
import '../../../../../../core/helpers/setup_error_state.dart';
import '../../../../../../core/routing/routes.dart';

class ResetPassBlocListener extends StatelessWidget {
  const ResetPassBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPassCubit, ResetPassState>(
      listenWhen: (previous, current) =>
          current is ResetLoading ||
          current is ResetSuccess ||
          current is ResetError,
      listener: (context, state) {
        switch (state) {
          case ResetLoading():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.mainColor,
                ),
              ),
            );

            break;
          case ResetSuccess():
            context.pop();
            Future.delayed(const Duration(seconds: 2)).then(
              (value) => context.push(
                Routes.home,
              ),
            );

            break;
          case ResetError():
            setupErrorState(context, state.error);
            break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
