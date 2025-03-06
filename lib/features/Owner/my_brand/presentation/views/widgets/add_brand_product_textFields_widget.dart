import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';

import '../../../../../../core/widgets/app_text_form_field.dart';

class AddBrandProductTextFieldsWidgets extends StatelessWidget {
  const AddBrandProductTextFieldsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Handmade Leather Bag",
            labelText: "Name",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 60.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "bag made in Egypt",
            labelText: "description",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 60.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: '["Small", "Medium", "Large"]',
            labelText: "Sizes",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 60.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Brown",
            labelText: "Color",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 60.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "120.50",
            labelText: "Price",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 60.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "50",
            labelText: "quantity",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 60.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Accessories",
            labelText: "category",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          height: 60.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Bags",
            labelText: "subcategory",
            validator: (p0) {},
          ),
        ),
      ],
    );
  }
}
