import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/divider_and_text.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/google_signin_widget.dart';

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
              verticalSpace(50),
              Text(
                "Create an account",
                style: Styles.font35W700,
              ),
              verticalSpace(30),
              AppTextFormField(
                labelText: 'Name',
                hintText: 'name',
                validator: (p0) {},
              ),
              verticalSpace(30),
              AppTextFormField(
                labelText: 'E-mail',
                hintText: 'email',
                validator: (p0) {},
              ),
              verticalSpace(30),
              ValueListenableBuilder<bool>(
                  valueListenable: viewPass,
                  builder: (context, value, child) {
                    return AppTextFormField(
                      labelText: 'Password',
                      hintText: 'password',
                      isObscureText: viewPass.value,
                      suffixIcon: IconButton(
                          onPressed: () {
                            viewPass.value = !value;
                          },
                          icon: viewPass.value
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined)),
                      validator: (p0) {},
                    );
                  }),
              verticalSpace(30),
              ValueListenableBuilder<bool>(
                  valueListenable: viewRestPass,
                  builder: (context, rest, child) {
                    return AppTextFormField(
                      labelText: 'Re-enter Password',
                      hintText: 're-enter password',
                      isObscureText: viewRestPass.value,
                      suffixIcon: IconButton(
                          onPressed: () {
                            viewRestPass.value = !rest;
                          },
                          icon: viewRestPass.value
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined)),
                      validator: (p0) {},
                    );
                  }),
              verticalSpace(20),
              Text(
                "Rule",
                style: Styles.font20W400.copyWith(color: Colors.black),
              ),
              DropdownMenu(
                  hintText: "User",
                  width: 210.w,
                  menuStyle: const MenuStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)),
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(value: "user", label: "User"),
                    DropdownMenuEntry(value: "owner", label: "Owner")
                  ]),
              verticalSpace(30),
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
              verticalSpace(30),
              const DividerAndText(),
              verticalSpace(20),
              Center(
                child: SizedBox(
                  width: 300.w,
                  child: const GoogleSigninWidget(
                    text: 'Continue with Google',
                    backgroundColor: ColorManager.grayE4,
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
