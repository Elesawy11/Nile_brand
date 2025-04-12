import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';

class UpdateCreateCategSetting extends StatelessWidget {
  final String title;
  const UpdateCreateCategSetting({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "$title Category",
            style: Styles.font30W700.copyWith(fontSize: 25.sp,fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: 12.allEdgeInsets,
          child: Column(
            children: [
              60.vs,
              SizedBox(
                height: 50.h,
                child: AppTextFormField(
                  labelText: "Name",
                  hintText: "Name",
                  validator: (p0) {},
                ),
              ),
              350.vs,
              SizedBox(
                width: 150.w,
                  child: AppTextButton(
                    backgroundColor: ColorManager.mainColor,
                text: title == "Create" ? "Save" : "Save Changes",
                onPressed: () => context.pop(),
              ))
            ],
          ),
        ));
  }
}
