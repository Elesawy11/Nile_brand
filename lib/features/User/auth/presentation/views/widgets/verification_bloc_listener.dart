import 'package:nile_brand/core/routing/exports.dart';

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
