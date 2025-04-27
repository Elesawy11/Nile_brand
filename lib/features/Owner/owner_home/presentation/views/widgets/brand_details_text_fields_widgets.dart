import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';

import '../../../../../../core/widgets/app_text_form_field.dart';

class BrandDetailsTextFieldsWidgets extends StatelessWidget {
  const BrandDetailsTextFieldsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Handmade Leather Bag",
            labelText: "Name",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "bag made in Egypt",
            labelText: "Description",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: '''["Small", "Medium", "Large"]''',
            labelText: "Sizes",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Brown",
            labelText: "Colors",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 60.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "100.0",
            labelText: "Price",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "12",
            labelText: "Quantity",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Accessories",
            labelText: "Category",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Bags",
            labelText: "SubCategory",
            validator: (p0) {},
          ),
        ),
      ],
    );
  }
}
