import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/password_field.dart';
import 'package:nile_brand/features/User/profile/presentation/views/widgets/profile_image.dart';

import '../../../../../core/utils/assets.dart';

class BrandProfileView extends StatefulWidget {
  const BrandProfileView({super.key});

  @override
  State<BrandProfileView> createState() => _BrandProfileViewState();
}

class _BrandProfileViewState extends State<BrandProfileView> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Profile",
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
                  height: 50.h,
                  child: AppTextFormField(
                    hintText: "Name",
                    labelText: "Name",
                    validator: (p0) {},
                  ),
                ),
                34.vs,
                SizedBox(
                  height: 50.h,
                  child: AppTextFormField(
                    hintText: "E-mail",
                    labelText: "E-mail",
                    validator: (p0) {},
                  ),
                ),
                34.vs,
                SizedBox(
                  height: 50.h,
                  child: PasswordField(
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
