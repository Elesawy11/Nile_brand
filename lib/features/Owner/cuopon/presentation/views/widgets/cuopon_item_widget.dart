import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';

class CuoponItemWidget extends StatelessWidget {
  const CuoponItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();

    void _showSendDialog() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            

            title:  Text("Send Coupon"),
            content: TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                
                labelText: "Email",
                hintText: "example@example.com",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorManager.blue33
                  )
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("Cancel" , style: TextStyle(color: Colors.black),),
              ),
              TextButton(
                onPressed: () {
                  final email = _emailController.text.trim();
                  if (email.isNotEmpty) {
                    
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Coupon sent to $email")),
                    );
                  }
                },
                child: Text("Send" , style: TextStyle(color: Colors.black)),
              ),
            ],
          );
        },
      );
    }

    return InkWell(
      onTap: () => context.push(Routes.updateCuopon),
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.grayD9,
          borderRadius: BorderRadius.circular(8.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        margin: EdgeInsets.only(top: 26.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SUMMER2024',
                  style: Styles.font20W400.copyWith(
                    color: ColorManager.subText,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'ED : 31-4-2025',
                  style: Styles.font20W400.copyWith(
                    color: ColorManager.subText,
                    fontSize: 15.sp,
                  ),
                ),
                Text(
                  "Discount Amount : 20.0",
                  style: Styles.font20W400.copyWith(
                    fontSize: 15.sp,
                    color: ColorManager.subText,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    Assets.imagesDeleteIcon,
                    height: 24.r,
                    width: 24.r,
                    color: const Color.fromARGB(255, 189, 114, 114),
                  ),
                ),
                8.hs,
                InkWell(
                  onTap: _showSendDialog,
                  child: Icon(
                    Icons.send,
                    size: 24.w,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
