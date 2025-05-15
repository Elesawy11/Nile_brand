import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/divider_and_text.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/google_signin_widget.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/signup_form.dart';

import '../cubits/signup_cubit/sign_up_cubit.dart';
import 'widgets/signup_bloc_listener.dart';

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);
  final ValueNotifier<bool> viewRestPass = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    // final cubit = context.read<SignUpCubit>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
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
                  SignupForm(
                    viewPass: viewPass,
                    viewRestPass: viewRestPass,
                  ),
                  30.vs,
                  Center(
                    child: SizedBox(
                      width: 300.w,
                      child: AppTextButton(
                        text: 'Sign Up',
                        onPressed: () => validateThenDoSignup(context),
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
                  SignupBlocListener(),
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
