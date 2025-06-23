import '../../../../../../core/routing/exports.dart';

class CustomVerifyButton extends StatelessWidget {
  const CustomVerifyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 370.w,
      child: Padding(
        padding: 50.ph,
        child: AppTextButton(
          text: 'Verify',
          onPressed: () => validateThenDoVerify(context),
          backgroundColor: ColorManager.mainColor,
        ),
      ),
    );
  }

  void validateThenDoVerify(BuildContext context) {
    if (context.read<VerifyCodeCubit>().formKey.currentState!.validate()) {
      context.read<VerifyCodeCubit>().emitVerifyCodeState();
    }
  }
}
