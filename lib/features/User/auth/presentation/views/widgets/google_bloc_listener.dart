import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/google_sigin_cubit/google_signin_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/google_sigin_cubit/google_signin_state.dart';
import '../../../../../../core/helpers/setup_error_state.dart';
import '../../../../../../core/helpers/show_succes_dialog.dart';
import '../../../../../../core/routing/routes.dart';

class GoogleBlocListener extends StatelessWidget {
  const GoogleBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GoogleSigninCubit, GoogleSigninState>(
      listenWhen: (previous, current) =>
          current is GoogleError ||
          current is GoogleLoading ||
          current is GoogleSuccess,
      listener: (context, state) {
        switch (state) {
          case GoogleLoading():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.mainColor,
                ),
              ),
            );

            break;
          case GoogleSuccess():
            context.pop();
            showSuccessDialog(
                message: 'Congratulations, you have logged in successfully!',
                context, onPressed: () {
              context.go(Routes.home);
            });
            break;
          case GoogleError():
            setupErrorState(context, state.error);
            break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
