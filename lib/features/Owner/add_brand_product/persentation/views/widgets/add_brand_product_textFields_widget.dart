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
          // height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Handmade Leather Bag",
            labelText: "Name",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          // height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "bag made in Egypt",
            maxLines: 3,
            labelText: "description",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          // height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: 'ex : large , small ..etc',
            labelText: "Sizes (optional)",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          // height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "ex : red , brown ..etc",
            labelText: "Color (optional)",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          // height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "120.50",
            labelText: "Price",
            validator: (p0) {},
          ),
        ),
        16.vs,
        SizedBox(
          // height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "50",
            labelText: "quantity",
            validator: (p0) {},
          ),
        ),
        16.vs,
       categoryAndSub(
        "Category",
        'Accessories'

        
       )
,
        16.vs,
        categoryAndSub("SubCategory", "Accessories")
      ],
    );
  }

  SizedBox categoryAndSub(String title,String value) {
    return SizedBox(

child: DropdownButtonFormField<String>(
  decoration: InputDecoration(
    labelText: title,
    hintText: "Select a category",
    floatingLabelBehavior: FloatingLabelBehavior.always,
    border: OutlineInputBorder(), 
  ),
  value: value, 
  items: [
    'Accessories',
    'Clothing',
    'Electronics',
    'Shoes',
    'Beauty',
  ].map((category) {
    return DropdownMenuItem<String>(
      value: category,
      child: Text(category),
    );
  }).toList(),
  onChanged: (value) {
    // setState(() {
    //   selectedCategory = value!;
    // });
  },
  validator: (value) {
    if (value == null || value.isEmpty) {
      return "Please select a category";
    }
    return null;
  },
),
);
  }
}
