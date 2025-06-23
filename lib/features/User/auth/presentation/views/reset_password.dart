import '../../../../../core/routing/exports.dart';
import 'widgets/reset_pass_form.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);
  final ValueNotifier<bool> viewRestPass = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAuthWelcomeWidget(
                    title: "Reset Password",
                    subTitle:
                        "Enter your new password twice below to reset a new password.",
                  ),
                  verticalSpace(92),
                  ResetPassForm(
                    viewPass: viewPass,
                    viewRestPass: viewRestPass,
                  ),
                  verticalSpace(57),
                  SizedBox(
                    height: 50.h,
                    width: 420.w,
                    child: Padding(
                      padding: 50.ph,
                      child: AppTextButton(
                        text: 'Reset Password',
                        onPressed: () => validateThenDoReset(context),
                        backgroundColor: ColorManager.mainColor,
                      ),
                    ),
                  ),
                  verticalSpace(160),
                  const HaveAcountText(),
                  const ResetPassBlocListener(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoReset(BuildContext context) {
    if (context.read<ResetPassCubit>().formKey.currentState!.validate()) {
      context.read<ResetPassCubit>().emitResetPassState();
    }
  }
}
