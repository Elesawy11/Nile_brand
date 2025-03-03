import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/custom_auth_bar_widget.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/divider_and_text.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/google_signin_widget.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/have_acount_text.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/password_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAuthWelcomeWidget(
                title: 'Login',
                subTitle: 'Welcome back to the app',
              ),
              verticalSpace(54),
              AppTextFormField(
                labelText: 'E-mail',
                hintText: 'email',
                validator: (p0) {},
              ),
              verticalSpace(35),
              PasswordField(viewPass: viewPass, labelText: "Password", hintText: "password"),
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
                    onPressed: () {
                      context.push(Routes.home);
                    },
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
                  child: const GoogleSigninWidget(
                    text: 'Continue with Google',
                    backgroundColor: ColorManager.lightGrey,
                  ),
                ),
              ),
              verticalSpace(54),
              const HaveAcountText()
            ],
          ),
        ),
      ),
    );
  }
}
