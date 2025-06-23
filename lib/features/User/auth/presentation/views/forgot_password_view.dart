import '../../../../../core/routing/exports.dart';
import 'widgets/forgot_pass_bloc_listener.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ForgotPassCubit>();
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
                    title: 'Forgot Password?',
                    subTitle:
                        'Enter your email address to get the password reset link.',
                  ),
                  verticalSpace(54),
                  Form(
                    key: cubit.formKey,
                    child: SizedBox(
                      child: AppTextFormField(
                        controller: cubit.emailController,
                        labelText: 'E-mail',
                        hintText: 'example@gmail.com',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                        },
                      ),
                    ),
                  ),
                  verticalSpace(76),
                  AppTextButton(
                    text: 'Password Reset',
                    onPressed: () => validateThenDoResetPass(context),
                    backgroundColor: ColorManager.mainColor,
                  ),
                  verticalSpace(230),
                  const HaveAcountText(),
                  const ForgotPassBlocListener(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoResetPass(BuildContext context) {
    if (context.read<ForgotPassCubit>().formKey.currentState!.validate()) {
      context.read<ForgotPassCubit>().emitforgotPassState();
    }
  }
}
