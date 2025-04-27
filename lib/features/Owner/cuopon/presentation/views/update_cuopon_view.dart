import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class UpdateCuoponView extends StatelessWidget {
  const UpdateCuoponView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            children: [
              30.vs,
              Align(
                alignment:Alignment.centerLeft,
                child: Text(
                  'Update Cuopon',
                  style: Styles.font35W700.copyWith(fontSize:30.sp),
                ),
              ),
              33.vs,
              SizedBox(
                height: 60.h,
                child: AppTextFormField(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "SUMMER2024",
                  labelText: "Name",
                  validator: (p0) {},
                ),
              ),
              20.vs,
              SizedBox(
                height: 60.h,
                child: AppTextFormField(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "2024, 8, 31",
                  labelText: "expireTime",
                  validator: (p0) {},
                ),
              ),
              20.vs,
              SizedBox(
                height: 60.h,
                child: AppTextFormField(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "20.0",
                  labelText: "discount",
                  validator: (p0) {},
                ),
              ),
              const Spacer(),
              Padding(
                padding: 70.ph,
                child: AppTextButton(
                  backgroundColor: ColorManager.mainColor,
                  text: "Save Changes",
                  onPressed: () {
                    context.pop();
                  },
                ),
              ),
              45.vs
            ],
          ),
        ),
      ),
    );
  }
}
