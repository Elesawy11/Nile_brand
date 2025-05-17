import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/google_sigin_cubit/google_signin_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/custom_auth_bar_widget.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/divider_and_text.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/google_bloc_listener.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/google_signin_widget.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/have_acount_text.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/login_bloc_listener.dart';
import '../cubits/login_cubit/login_cubit.dart';
import 'widgets/custom_login_form.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
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
                CustomLoginForm(viewPass: viewPass),
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
                      // onPressed: () {
                      //   context.pushReplacement(Routes.home);
                      // },
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
                LoginBlocListener(),
                GoogleBlocListener(),
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
