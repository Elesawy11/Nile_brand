import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/password_field.dart';
import 'package:nile_brand/features/User/profile/presentation/widgets/profile_image.dart';

import '../../../../core/utils/assets.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Edit Profile",
            style: Styles.font20W600,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileImage(imageUrl: Assets.imagesProfileImage),
              26.vs,
              SizedBox(
                height: 60.h,
                width: 350.w,
                child: AppTextFormField(
                  hintText: "Name",
                  labelText: "Name",
                  validator: (p0) {},
                ),
              ),
              25.vs,
              SizedBox(
                height: 60.h,
                width: 350.w,
                child: AppTextFormField(
                  hintText: "E-mail",
                  labelText: "E-mail",
                  validator: (p0) {},
                ),
              ),
              25.vs,
              SizedBox(
                height: 60.h,
                width: 350.w,
                child: PasswordField(
                    viewPass: viewPass,
                    labelText: "Password",
                    hintText: "password"),
              ),
              20.vs,
              Padding(
                padding: 70.ph,
                child: AppTextButton(
                  backgroundColor: ColorManager.mainColor,
                  text: "Save Changes",
                  onPressed: () {
                    context.pop();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
