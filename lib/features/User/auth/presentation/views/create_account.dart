import '../../../../../core/routing/exports.dart';
import 'widgets/signup_bloc_listener.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.vs,
                  Text(
                    "Create an account",
                    style: Styles.font35W700,
                  ),
                  30.vs,
                  const SignupForm(),
                  30.vs,
                  Center(
                    child: SizedBox(
                      width: 300.w,
                      child: AppTextButton(
                        text: 'Sign Up',
                        onPressed: () {
                          validateThenDoSignup(context);
                        },
                        backgroundColor: ColorManager.mainColor,
                      ),
                    ),
                  ),
                  30.vs,
                  const DividerAndText(),
                  20.vs,
                  Center(
                    child: SizedBox(
                      width: 300.w,
                      child: const GoogleSigninWidget(
                        text: 'Continue with Google',
                        backgroundColor: ColorManager.lightGrey,
                      ),
                    ),
                  ),
                  const SignupBlocListener(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpState();
    }
  }
}
