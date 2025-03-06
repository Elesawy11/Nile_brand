import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/app_text_button.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../User/profile/presentation/widgets/profile_image.dart';

class CreateBrandBody extends StatelessWidget {
  const CreateBrandBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.vs,
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Create Brand',
            style: Styles.font35W700,
          ),
        ),
        47.vs,
        const ProfileImage(imageUrl: Assets.imagesProfileImage),
        21.vs,
        Text(
          'Logo',
          style: Styles.font20W400,
        ),
        44.vs,
        SizedBox(
          height: 60.h,
          width: 350.w,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "name of brand",
            labelText: "Name",
            validator: (p0) {},
          ),
        ),
        22.vs,
        SizedBox(
          height: 60.h,
          width: 350.w,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "description of brand",
            labelText: "description",
            validator: (p0) {},
          ),
        ),
        22.vs,
        SizedBox(
          height: 60.h,
          width: 350.w,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "123456789",
            labelText: "taxID",
            validator: (p0) {},
          ),
        ),
        105.vs,
        SizedBox(
          width: 192.w,
          child: AppTextButton(
            backgroundColor: ColorManager.mainColor,
            text: 'Submit',
            //TODO: change this
            onPressed: () => context.push(Routes.ownerHome),
          ),
        )
      ],
    );
  }
}
