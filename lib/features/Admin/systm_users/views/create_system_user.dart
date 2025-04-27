import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/password_field.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/app_text_button.dart';

class CreateSystemUser extends StatefulWidget {
  const CreateSystemUser({super.key});

  @override
  State<CreateSystemUser> createState() => _CreateSystemUserState();
}

class _CreateSystemUserState extends State<CreateSystemUser> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(false);
  final ValueNotifier<bool> conmfPass = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create System User", style: Styles.font30W700.copyWith(fontSize: 25.sp,fontWeight: FontWeight.bold),),
        ),
        body: Padding(
          padding: 12.allEdgeInsets,
          child: Column(
            children: [

              20.vs,

              SizedBox(
                height: 52.h,
                width: 340.w,
                child: AppTextFormField(
                  labelText: "Name",
                  hintText: "user name", validator: (p0){}),
                
              ),
              25.vs,
              SizedBox(
                height: 52.h,
                width: 340.w,
                child: AppTextFormField(
                  labelText: "Email",
                  hintText: "example@gmail.com", validator: (p0){}),
                
              ),
              25.vs,
              SizedBox(
                height: 52.h,
                width: 340.w,
                child: PasswordField(viewPass: viewPass, labelText: "Password", hintText: "password")),
              25.vs,
              SizedBox(
                height: 52.h,
                width: 340.w,
                child: PasswordField(
                  viewPass: conmfPass, labelText: "Confirm Password", hintText: "confirm Password",
                  )
                  ),
                 
                
              
              190.vs,
              SizedBox(
                width: 150.w,
                  child: AppTextButton(
                    backgroundColor: ColorManager.mainColor,
                text:  "Save" ,
                onPressed: () => context.pop(),
              ))

            ],
          ),
          ),
      ),
    );
  }
}