import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/profile/ui/widgets/profile_image.dart';

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
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ProfileImage(imageUrl: "assets/images/profile_image.png"),
              verticalSpace(26.h),

              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 20.h, right: 20.h),
                child: AppTextFormField(
                  hintText: "Name",
                  labelText: "Name",
                  validator: (p0) {},
                ),
              ),
              verticalSpace(15.h),
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 20.h, right: 20.h),
                child: AppTextFormField(
                  hintText: "E-mail",
                  labelText: "E-mail",
                  validator: (p0) {},
                ),
              ),
              
              verticalSpace(15.h),
              ValueListenableBuilder<bool>(
                valueListenable: viewPass,
                builder: (context, value, child) {
                  return Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 20.h, right: 20.h),
                    child: AppTextFormField(
                      hintText: "Password",
                      labelText: "Password",
                      isObscureText: viewPass.value,
                      validator: (p0) {},
                      suffixIcon: IconButton(
                      onPressed: (){
                        viewPass.value = !value;
                      }, icon:viewPass.value ? const Icon(Icons.visibility_off_outlined): const Icon(Icons.visibility_outlined)),
                    ),
                  );
                }
              ),
              verticalSpace(20.h),
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 70.h, right: 70.h),
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
