import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_sub_categories_cubit/get_sub_categorys_cubit.dart';
import 'package:nile_brand/features/User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<GetCategoryCubit>();
    final subCategoryCubit = context.read<GetSubCategorysCubit>()
      ..getSubCategories(
        id: cubit.categoryList[0].id!,
      );
    return TabBar(
      isScrollable: true,
      controller: tabController,
      tabAlignment: TabAlignment.start,
      onTap: (value) {
        log('Selected tab index: $value');
        subCategoryCubit.getSubCategories(
          id: cubit.categoryList[value].id!,
        );
      },
      dividerHeight: 0,
      dividerColor: Colors.black,
      indicatorColor: Colors.black,
      labelPadding: EdgeInsets.only(right: 14.w, left: 7.w),
      tabs: cubit.categoryList
          .map(
            (mainCategory) => Tab(
              child: Text(
                mainCategory.name ?? '',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
