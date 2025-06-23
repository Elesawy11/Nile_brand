import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/login_cubit/login_state.dart';
import '../../../../../../core/helpers/setup_error_state.dart';
import '../../../../../../core/helpers/show_succes_dialog.dart';
import '../../../../../../core/routing/routes.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginLoading ||
          current is LoginSuccess ||
          current is LoginError,
      listener: (context, state) {
        switch (state) {
          case LoginLoading():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.mainColor,
                ),
              ),
            );

            break;
          case LoginSuccess():
            context.pop();
            showSuccessDialog(
                title: 'Login Successful',
                message: 'Congratulations, you have logged in successfully!',
                context, onPressed: () {
              context.go(Routes.ownerHome, extra: "685691c46b03f8f3085f1915");
            });
            break;
          case LoginError():
            setupErrorState(context, state.error);
            break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
