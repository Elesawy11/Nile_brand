import 'package:nile_brand/core/helpers/show_succes_dialog.dart';

import 'package:nile_brand/core/routing/exports.dart';

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
                title: 'Sign Up Successful',
                message: 'Congratulations, you have signed up successfully!',
                context, onPressed: () {
              // context.go(Routes.login);
              if (context.read<SignUpCubit>().ruleController.text == "owner") {
                context.go(Routes.createBrand);
              } else if (context.read<SignUpCubit>().ruleController.text ==
                  "user") {
                context.go(Routes.home);
              } else {
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
