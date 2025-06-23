import '../../../../../core/routing/exports.dart';
import 'widgets/custom_login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAuthWelcomeWidget(
                  title: 'Login',
                  subTitle: 'Welcome back to the app',
                ),
                verticalSpace(54),
                const CustomLoginForm(),
                verticalSpace(10),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () => context.push(Routes.forgotPassword),
                    child: Text(
                      'Forgot Password?',
                      style: Styles.font14W400.copyWith(
                        color: ColorManager.forgetPassColor,
                      ),
                    ),
                  ),
                ),
                verticalSpace(47),
                Center(
                  child: SizedBox(
                    width: 300.w,
                    child: AppTextButton(
                      text: 'Login',
                      onPressed: () => validateThenDoLogin(context),
                      backgroundColor: ColorManager.mainColor,
                    ),
                  ),
                ),
                verticalSpace(35),
                const DividerAndText(),
                verticalSpace(36),
                Center(
                  child: SizedBox(
                    width: 300.w,
                    child: GoogleSigninWidget(
                      text: 'Continue with Google',
                      backgroundColor: ColorManager.lightGrey,
                      onPressed: () {
                        context
                            .read<GoogleSigninCubit>()
                            .emitSignInWithGoogle();
                      },
                    ),
                  ),
                ),
                verticalSpace(54),
                const HaveAcountText(),
                const LoginBlocListener(),
                const GoogleBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
