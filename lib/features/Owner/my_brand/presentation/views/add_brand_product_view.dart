import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/Owner/my_brand/presentation/views/widgets/add_brand_product_textFields_widget.dart';
import '../../../../../core/widgets/app_text_button.dart';

class AddBrandProductView extends StatelessWidget {
  const AddBrandProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 22.w),
          child: InkWell(
            onTap: () => context.pop(),
            child: Image.asset(
              Assets.imagesArrowLeftIcon,
              width: 24.r,
              // height: 24.r,
            ),
          ),
        ),
        title: Text(
          'Add Product',
          style: Styles.font24W500,
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
                const AddBrandProductTextFieldsWidgets(),
                35.vs,
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
