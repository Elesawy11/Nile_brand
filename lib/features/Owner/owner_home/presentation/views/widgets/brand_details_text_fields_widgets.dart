import 'package:nile_brand/core/routing/exports.dart';
import 'package:nile_brand/features/User/category/data/models/sub_category_model.dart';

import '../../../../add_brand_product/persentation/manager/create_product/create_product_cubit.dart';


class BrandDetailsTextFieldsWidgets extends StatelessWidget {
  final List<CategoryModel> category;
  final List<SubCategoryModel> subCategory;

  const BrandDetailsTextFieldsWidgets(
      {super.key, required this.category, required this.subCategory});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CreateProductCubit>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Name
        SizedBox(
          height: 50.h,
          child: AppTextFormField(
            controller: cubit.nameController,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Handmade Leather Bag",
            labelText: "Name",
            validator: (p0) {
              if (p0 == null || p0.isEmpty) return 'Name is required';
              return null;
            },
          ),
        ),
        16.vs,

        // Description
        SizedBox(
          height: 50.h,
          child: AppTextFormField(
            controller: cubit.descriptionController,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Bag made in Egypt",
            labelText: "Description",
            validator: (p0) {
              if (p0 == null || p0.isEmpty) return 'Description is required';
              return null;
            },
          ),
        ),
        16.vs,

        // Sizes
        SizedBox(
          height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: '''["Small", "Medium", "Large"]''',
            labelText: "Sizes",
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

        // Colors
        SizedBox(
          height: 50.h,
          child: AppTextFormField(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Brown, Black",
            labelText: "Colors",
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

        // Price
        SizedBox(
          height: 50.h,
          child: AppTextFormField(
            controller: cubit.priceController,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "100.0",
            labelText: "Price",
            keyboardType: TextInputType.number,
            validator: (p0) {
              if (p0 == null || p0.isEmpty) return 'Price required';
              return null;
            },
          ),
        ),
        16.vs,

        // Quantity
        SizedBox(
          height: 50.h,
          child: AppTextFormField(
            controller: cubit.quantityController,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "12",
            labelText: "Quantity",
            keyboardType: TextInputType.number,
            validator: (p0) {
              if (p0 == null || p0.isEmpty) return 'Quantity required';
              return null;
            },
          ),
        ),
        16.vs,

        // // Category Expansion List
        InkWell(
          onTap: () {
            // await context
            //     .read<GetCategoryCubit>()
            //     .emitGetCategories();
            print(context.read<GetCategoryCubit>().categoryList);
          },
          child: ExpansionTile(
            title: Text("Select Category:   ${cubit.selectedCategoryId ?? ''}"),
            children: category.map((category) {
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
                "Select SubCategory: ${cubit.selectedSubCategoryId ?? ''}"),
            children: subCategory.map((subcategory) {
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
