import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class UpdateUserInfo extends StatelessWidget {
  const UpdateUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Update System User",
              style: Styles.font30W700.copyWith(fontSize: 25.sp,fontWeight: FontWeight.bold),
            ),
          ),
          body: Padding(
            padding: 12.allEdgeInsets.copyWith(bottom: 40.h),
            child: Column(
              children: [
                60.vs,
                SizedBox(
                  height: 50.h,
                 
                width: 340.w,
                  child: AppTextFormField(
                    labelText: "Name",
                    hintText: "Name",
                    validator: (p0) {},
                  ),
                ),
                30.vs,
                SizedBox(
                 height: 50.h,
                width: 340.w,
                  child: AppTextFormField(
                    labelText: "Status",
                    hintText: "Status",
                    validator: (p0) {},
                  ),
                ),
                const Spacer(),
                SizedBox(
                    width: 150.w,
                    child: AppTextButton(
                      backgroundColor: ColorManager.mainColor,
                      text: "Save Changes",
                      onPressed: () => context.pop(),
                    ))
              ],
            ),
          )),
    );
  }
}