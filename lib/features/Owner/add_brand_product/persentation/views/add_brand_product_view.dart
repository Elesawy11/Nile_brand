import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/Owner/add_brand_product/persentation/views/widgets/add_brand_product_textfields_widget.dart';
import '../../../../../core/widgets/app_text_button.dart';

class AddBrandProductView extends StatelessWidget {
  const AddBrandProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: Text(
          'Add Product',
          style: Styles.font24W500.copyWith(fontSize:30.sp,fontWeight:FontWeight.w700),
        ),
        
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                
                InkWell(
                  onTap: ()async{
                    final ImagePicker picker = ImagePicker();
                
                try {
                  final XFile? image =
                      await picker.pickImage(source: ImageSource.gallery);
                
                  if (image != null) {
                    if (await File(image.path).exists()) {
                      //  imageUrl = image.path;
                      // change profile image
                    }
                  }
                } catch (e) {
                  log(e.toString());
                }
                  },
                  child: Image.asset(
                    Assets.imagesAddImage,
                    width: 90.r,
                    height: 90.r,
                  ),
                ),
                10.vs,
                const AddBrandProductTextFieldsWidgets(),
                22.vs,
                SizedBox(
                  width: 192.w,
                  child: AppTextButton(
                    backgroundColor: ColorManager.mainColor,
                    text: 'Save',
                    onPressed: () {},
                  ),
                ),
                35.vs,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
