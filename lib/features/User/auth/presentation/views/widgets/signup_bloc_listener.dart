import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import '../../../../../../core/helpers/setup_error_state.dart';
import '../../../../../../core/helpers/show_succes_dialog.dart';
import '../../../../../../core/routing/routes.dart';
import '../../cubits/signup_cubit/sign_up_cubit.dart';
import '../../cubits/signup_cubit/sign_up_state.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is SignUpLoading ||
          current is SignUpSuccess ||
          current is SignUpError,
      listener: (context, state) {
        switch (state) {
          case SignUpLoading():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.mainColor,
                ),
              ),
            );

            break;
          case SignUpSuccess():
            context.pop();
            showSuccessDialog(
                message: 'Congratulations, you have signed up successfully!',
                context, onPressed: () {
              // context.go(Routes.login);
              if(context.read<SignUpCubit>().ruleController.text == "owner"){
                context.go(Routes.createBrand);

              }
              else if(context.read<SignUpCubit>().ruleController.text == "user"){

                context.go(Routes.home);

              }
              else{
                context.go(Routes.allbrands);
              }
            });
            break;
          case SignUpError():
            setupErrorState(context, state.error);
            break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
