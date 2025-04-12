import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Admin/manage_categories/views/widgets/custom_tile.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/styles.dart';

class CategorySubCategorySettings extends StatelessWidget {
  final String mainTitle;
  const CategorySubCategorySettings({super.key, required this.mainTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            mainTitle,
            style: Styles.font30W700.copyWith(fontSize: 27,height: 1.h,fontWeight: FontWeight.bold),
          ),
        ),
        10.vs,
        ...List.generate(
          3,
          (index) {
            List<String> sections = ["Create", "Update", "Delete"];
            return CustomTileList(
              onTap: () {
                if (sections[index] == "Delete") {
                  return;
                }
                context.push(mainTitle.contains("Subcategory")? Routes.updateSubCategory: Routes.updateCategory, extra: sections[index]);
              },
              title: mainTitle.contains("Subcategory")
                  ? "${sections[index]} SubCategory"
                  : " ${sections[index]} Category",
            );
          },
        ),
      ],
    );
  }
}
