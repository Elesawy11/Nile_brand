import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';

import 'package:nile_brand/features/User/home/data/models/category_model.dart';
import 'package:nile_brand/features/User/category/data/models/sub_category_model.dart';

import '../../../../../../core/widgets/app_text_form_field.dart';
import '../../manager/create_product/create_product_cubit.dart';

class AddBrandProductTextFieldsWidgets extends StatefulWidget {
  final List<CategoryModel> category;

  final List<SubCategoryModel> subcategory;

  const AddBrandProductTextFieldsWidgets(
      {super.key, required this.category, required this.subcategory});

  @override
  State<AddBrandProductTextFieldsWidgets> createState() =>
      _AddBrandProductTextFieldsWidgetsState();
}

class _AddBrandProductTextFieldsWidgetsState
    extends State<AddBrandProductTextFieldsWidgets> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CreateProductCubit>();
    return Column(
      children: [
        SizedBox(
          // height: 50.h,
          child: AppTextFormField(
            controller: cubit.nameController,
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
            controller: cubit.descriptionController,
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
            onChange: (value) {
              final sizes = value
                  .replaceAll('[', '')
                  .replaceAll(']', '')
                  .replaceAll('"', '')
                  .split(',')
                  .map((e) => e.trim())
                  .toList();
              cubit.setSizes(sizes);
            },
            validator: (p0) {
              if (p0 == null || p0.isEmpty) return 'Sizes required';
              return null;
            },
          ),
        ),
        16.vs,
        SizedBox(
          // height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "ex : red , brown ..etc",
            labelText: "Color (optional)",
            onChange: (value) {
              final colors = value
                  .split(',')
                  .map((e) => e.trim())
                  .where((e) => e.isNotEmpty)
                  .toList();
              cubit.setColors(colors);
            },
            validator: (p0) {
              if (p0 == null || p0.isEmpty) return 'Colors required';
              return null;
            },
          ),
        ),
        16.vs,
        SizedBox(
          // height: 50.h,
          child: AppTextFormField(
            controller: cubit.priceController,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "120.50",
            labelText: "Price",
            keyboardType: TextInputType.number,
            validator: (p0) {
              if (p0 == null || p0.isEmpty) return 'Price required';
              return null;
            },
          ),
        ),
        16.vs,
        SizedBox(
          // height: 50.h,
          child: AppTextFormField(
            controller: cubit.quantityController,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "50",
            labelText: "quantity",
            keyboardType: TextInputType.number,
            validator: (p0) {
              if (p0 == null || p0.isEmpty) return 'Quantity required';
              return null;
            },
          ),
        ),
        16.vs,

        16.vs,
        InkWell(
          onTap: () {
            // await context
            //     .read<GetCategoryCubit>()
            //     .emitGetCategories();
            // print(context.read<GetCategoryCubit>().categoryList);
          },
          child: ExpansionTile(
            title: Text(
                "Select Category: Category  ${cubit.selectedCategoryId ?? ''}"),
            children: widget.category.map((category) {
              return ListTile(
                title: Text(category.name!),
                onTap: () {
                  cubit.setCategory(category.id!);
                },
              );
            }).toList(),
          ),
        ),
        16.vs,

        // Subcategory Expansion List
        InkWell(
          onTap: () async {
            // await context.read<GetSubCategorysCubit>().getSubCategories();
          },
          child: ExpansionTile(
            title: Text(
                "Select SubCategory: ${cubit.selectedSubCategoryId ?? ''}  "),
            children: widget.subcategory.map((subcategory) {
              return ListTile(
                title: Text(subcategory.name!),
                onTap: () {
                  // print(context.read<GetSubCategorysCubit>().subCategories);
                  cubit.setSubCategory(subcategory.id!);
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
