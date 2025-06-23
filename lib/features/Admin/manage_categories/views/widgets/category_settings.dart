import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/exports.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
// import 'package:nile_brand/features/Admin/manage_categories/views/manager/manage_catg_cubit.dart';
// import 'package:nile_brand/features/Admin/manage_categories/views/manager/manage_catg_state.dart';
import 'package:nile_brand/features/Admin/manage_categories/views/widgets/custom_tile.dart';
import 'package:nile_brand/features/Admin/manage_categories/views/widgets/custome_catg.dart';

import '../../../../../core/routing/routes.dart';
// import '../../../../../core/utils/assets.dart';
// import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../User/category/presentation/cubits/get_sub_categories_cubit/get_sub_categorys_state.dart';
import '../../../../User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';
import '../../../../User/home/presentation/cubits/get_category_cubit/get_category_state.dart';
// import '../manager/manage_catg_cubit.dart';
// import '../manager/manage_catg_state.dart';

class CategorySubCategorySettings extends StatelessWidget {
  final String mainTitle;
  const CategorySubCategorySettings({super.key, required this.mainTitle});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCategoryCubit, GetCategoryState>(
      builder: (context, categoryState) {
        return BlocBuilder<GetSubCategorysCubit, GetSubCategorysState>(
          builder: (context, subCategoryState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainTitle,
                  style: Styles.font30W700.copyWith(
                    fontSize: 27,
                    height: 1.h,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                10.vs,
                CustomTileList(
                  onTap: () {
                    context.push(
                      mainTitle.contains("Subcategory")
                          ? Routes.updateSubCategory
                          : Routes.updateCategory,
                      extra: {
                        "title": "Create",
                        "id": "",
                      },
                    );
                  },
                  title: mainTitle.contains("Subcategory")
                      ? "Create SubCategory"
                      : "Create Category",
                ),

                /// Expansion for View All
                ExpansionTile(
                  onExpansionChanged: (isExpanded) {
                    if (isExpanded) {
                      if (mainTitle.contains("Subcategory")) {
                        context.read<GetSubCategorysCubit>().getSubCategories();
                      } else {
                        context
                            .read<GetCategoryCubit>()
                            .emitGetCategories(isLoadMore: true);
                      }
                    }
                  },
                  showTrailingIcon: true,
                  collapsedShape: Border.all(color: Colors.white),
                  shape: Border.all(color: Colors.white),
                  title: Text(
                    "View All ${mainTitle.split(" ")[0]}",
                    style: Styles.font24W500.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  children: [
                    if (mainTitle.contains("Subcategory")) ...[
                      if (subCategoryState is SubCategoryLoading)
                        const CircularProgressIndicator(),
                      if (subCategoryState is SubCategorySuccess)
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: subCategoryState.subCategories.length,
                          itemBuilder: (context, index) {
                            return CustomeCatg(
                              mainTitle: mainTitle,
                              subCategoryInfo:
                                  subCategoryState.subCategories[index],
                            );
                          },
                        ),
                    ] else ...[
                      if (categoryState is CategoryLoading)
                        const CircularProgressIndicator(),
                      if (categoryState is CategorySuccess)
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: categoryState.categories.length,
                          itemBuilder: (context, index) {
                            return CustomeCatg(
                              mainTitle: mainTitle,
                              categoryInfo: categoryState.categories[index],
                            );
                          },
                        ),
                    ]
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}
