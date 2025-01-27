import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/auth/ui/widgets/divider_and_text.dart';
import 'package:nile_brand/features/auth/ui/widgets/google_signin_widget.dart';


class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

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
              verticalSpace(60),
              Text("Create an account",style: Styles.font35W700,),
              verticalSpace(30),

              AppTextFormField(
                labelText: 'Name',
                hintText: 'name',
                validator: (p0) {},
              ),
              verticalSpace(40),

              AppTextFormField(
                labelText: 'E-mail',
                hintText: 'email',
                validator: (p0) {},
              ),
               verticalSpace(40),

              AppTextFormField(
                labelText: 'Password',
                hintText: 'password',
                validator: (p0) {},
              ),

              verticalSpace(20),

              Text(
                "Rule",
                style: Styles.font20W400.copyWith(
                  color: Colors.black
                ),
              ),

             DropdownMenu(
              hintText: "User",
              width: 210.w,
              menuStyle:const MenuStyle(backgroundColor: WidgetStatePropertyAll(Colors.white)),
              dropdownMenuEntries:const [
                DropdownMenuEntry(value: "user", label: "User"),
                DropdownMenuEntry(value: "manager", label: "Manager")
              ]
              ),

              verticalSpace(50),

              AppTextButton(
                text: 'Sign Up',
                onPressed: () {},
                backgroundColor: ColorManager.mainColor,
              ),

              verticalSpace(35),
              const DividerAndText(),
              verticalSpace(36),
              const GoogleSigninWidget(
                text: 'Continue with Google',
                backgroundColor: ColorManager.grayE4,
              ),
            ],
          ),
        ),
      ),

    );
  }
}