import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/auth/ui/views/widgets/custom_auth_bar_widget.dart';
import 'package:nile_brand/features/auth/ui/views/widgets/divider_and_text.dart';
import 'package:nile_brand/features/auth/ui/views/widgets/google_signin_widget.dart';

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
              ValueListenableBuilder<bool>(
                valueListenable: viewPass,
                
                builder: (context, value, child) {
                  return AppTextFormField(
                    labelText: 'Password',
                    hintText: 'password',
                    isObscureText: viewPass.value,
                    
                    suffixIcon: IconButton(
                      onPressed: (){
                        viewPass.value = !value;
                      }, icon:viewPass.value ? const Icon(Icons.visibility_off_outlined): const Icon(Icons.visibility_outlined)),
                    validator: (p0) {},
                  );
                }
              ),
              verticalSpace(10),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => context.push(Routes.forgotPassword),
                  child: Text(
                    'Forgot Password?',
                    style: Styles.font14W400.copyWith(
                      color: ColorManager.red76,
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
                    backgroundColor: ColorManager.grayE4,
                  ),
                ),
              ),
              verticalSpace(54),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have account? ',
                      style: Styles.font14W400.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => context.push(Routes.creatAccount),
                      child: Text(
                        'sign up now',
                        style: Styles.font14W500.copyWith(
                          color: ColorManager.blue33,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
