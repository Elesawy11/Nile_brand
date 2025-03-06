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

import '../../../../../core/utils/assets.dart';

class UpdateBrandView extends StatefulWidget {
  const UpdateBrandView({super.key});

  @override
  State<UpdateBrandView> createState() => _UpdateBrandViewState();
}

class _UpdateBrandViewState extends State<UpdateBrandView> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Update Brand",
            style: Styles.font20W600,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              children: [
                const ProfileImage(imageUrl: Assets.imagesProfileImage),
                76.vs,
                SizedBox(
                  height: 60.h,
                  child: AppTextFormField(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "Name",
                    labelText: "Name",
                    validator: (p0) {},
                  ),
                ),
                34.vs,
                SizedBox(
                  height: 60.h,
                  child: AppTextFormField(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "E-mail",
                    labelText: "E-mail",
                    validator: (p0) {},
                  ),
                ),
                34.vs,
                SizedBox(
                  height: 60.h,
                  child: PasswordField(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    viewPass: viewPass,
                    labelText: "Password",
                    hintText: "password",
                  ),
                ),
                116.vs,
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
      ),
    );
  }
}
