import 'package:flutter/material.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Admin/manage_categories/views/widgets/category_settings.dart';

class ManageCategoryView extends StatelessWidget {
  const ManageCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: 8.ph,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.vs,
              const CategorySubCategorySettings(
                mainTitle: "Category Management",
              ),
              30.vs,
              const CategorySubCategorySettings(
                mainTitle: "Subcategory Management",
              ),
            ],
          ),
        ),
      ),

    ));
  }
}
