import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/divider_and_text.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/google_signin_widget.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/password_field.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/rule_selector.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              50.vs,
              Text(
                "Create an account",
                style: Styles.font35W700,
              ),
              30.vs,
              AppTextFormField(
                labelText: 'Name',
                hintText: 'name',
                validator: (p0) {},
              ),
              30.vs,
              AppTextFormField(
                labelText: 'E-mail',
                hintText: 'email',
                validator: (p0) {},
              ),
              30.vs,
              PasswordField(
                  viewPass: viewPass,
                  labelText: "Password",
                  hintText: "password"),
              30.vs,
              PasswordField(
                viewPass: viewRestPass,
                labelText: 'Re-enter Password',
                hintText: 're-enter password',
              ),
              20.vs,
              Text(
                "Rule",
                style: Styles.font20W400.copyWith(
                  color: ColorManager.mainText,
                ),
              ),
              const RuleSelector(),
              30.vs,
              Center(
                child: SizedBox(
                  width: 300.w,
                  child: AppTextButton(
                    text: 'Sign Up',
                    onPressed: () {
                      context.push(Routes.login);
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
            ],
          ),
        ),
      ),
    );
  }
}
