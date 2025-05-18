import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/update_password_cubit/update_password_cubit.dart';
// import 'package:nile_brand/features/User/auth/presentation/cubits/login_cubit/login_cubit.dart';
// import 'package:nile_brand/features/User/auth/presentation/cubits/login_cubit/login_state.dart';
import '../../../../../../core/helpers/setup_error_state.dart';
import '../../../../../../core/helpers/show_succes_dialog.dart';
import '../../../../../../core/routing/routes.dart';
import '../../cubits/update_password_cubit/update_password_state.dart';

class UpdatePassBlocListener extends StatelessWidget {
  const UpdatePassBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdatePasswordCubit, UpdatePasswordState>(
      listenWhen: (previous, current) =>
          current is UpdatePasswordError ||
          current is UpdatePasswordLoading ||
          current is UpdatePasswordSuccess,
      listener: (context, state) {
        switch (state) {
          case UpdatePasswordLoading():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.mainColor,
                ),
              ),
            );

            break;
          case UpdatePasswordSuccess():
            context.pop();
            showSuccessDialog(message: 'update successfully!', context,
                onPressed: () {
              context.go(Routes.editProfile);
            });
            break;
          case UpdatePasswordError():
            setupErrorState(context, state.error);
            break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
