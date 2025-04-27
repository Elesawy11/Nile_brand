import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import 'widgets/brand_details_text_fields_widgets.dart';

class BrandDetailsView extends StatelessWidget {
  const BrandDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          
          title: Text(
            'Product Details',
            style: Styles.font24W500.copyWith(fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    shadowColor: ColorManager.gray50,
                    child: Image.asset(
                      Assets.imagesBrandItem,
                      width: 90.r,
                      height: 90.r,
                    ),
                  ),
                  16.vs,
                  const BrandDetailsTextFieldsWidgets(),
                  35.vs,
                  SizedBox(
                    width: 192.w,
                    child: AppTextButton(
                      backgroundColor: ColorManager.mainColor,
                      text: 'Save changes',
                      onPressed: () {},
                    ),
                  ),
                  35.vs,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
