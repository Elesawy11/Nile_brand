import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import '../../../../core/utils/spacer.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/app_text_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(30.h),
              Text("verification",style: Styles.font35W700,),
              verticalSpace(40.h),
              Text(textAlign: TextAlign.center,"Please enter the code we just end to Email",style: Styles.font20W400,),
              Text(
                "example@gmail.com",
                style: Styles.font20W400.copyWith(color: ColorManager.blue33),
              ),
              verticalSpace(30.h),
              SizedBox(
                width: 290.w,
                height: 44.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < 5;i++)
                      SizedBox(
                          width: 44.w,
                          height: 44.h,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                          )
                          )
                  ],
                ),

                
              ),

              verticalSpace(30.h),

              Text("00 : 45",style: Styles.font20W400,),

              verticalSpace(30.h),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: AppTextButton(
                  text: 'Verify',
                  onPressed: () {
                    
                  },
                  backgroundColor: ColorManager.mainColor,
                ),
              ),


            ],
          ),
        ),
      ),
    ));
  }
}
