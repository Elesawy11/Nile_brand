import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:nile_brand/features/User/category/presentation/cubits/get_Category_products_Cubit/get_category_products_cubit.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_sub_categories_cubit/get_sub_categorys_cubit.dart';
import 'package:nile_brand/features/User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<GetCategoryCubit>();
    final subCategoryCubit = context.read<GetSubCategorysCubit>();
    final productCubit = context.read<GetProductsCubit>();
    List<String> categoryList = ['All'];
    categoryList.addAll(cubit.categoryList.map((e) => e.name ?? ''));
    return TabBar(
      isScrollable: true,
      controller: tabController,
      tabAlignment: TabAlignment.start,
      onTap: (value) {
        log('Selected tab index: $value');
        if (value == 0) {
          subCategoryCubit.getAllSubCategories();
          productCubit.getAllProducts();
        } else {
          subCategoryCubit.getCategorySubCategories(
            id: cubit.categoryList[value - 1].id!,
          );
          productCubit.getCategoryProducts(
              id: cubit.categoryList[value - 1].id!);
        }
      },
      dividerHeight: 0,
      dividerColor: Colors.black,
      indicatorColor: Colors.black,
      labelPadding: EdgeInsets.only(right: 14.w, left: 7.w),
      tabs: categoryList
          .map(
            (mainCategory) => Tab(
              child: Text(
                mainCategory,
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
