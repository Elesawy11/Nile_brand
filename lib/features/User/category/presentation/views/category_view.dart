import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/category_details.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/custom_appbar.dart';
import 'package:nile_brand/features/User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/routing/exports.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({
    super.key,
  });

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  final cubit = getIt.get<GetCategoryCubit>();
  // final categoryLenght = getIt.get<SharedPreferences>().getInt('category');

  @override
  void initState() {
    tabController = TabController(length:  cubit.categoryList.length + 1, vsync: this);
    // log('Category List Length: ==++++>>>>>${categoryLenght ?? 0}');
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<GetCategoryCubit>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomeAppbar(tabController: tabController!),
      body: TabBarView(
        controller: tabController,
        children: cubit.categoryList
            .map(
              (category) => CategoryDetails(
                category: category.id ?? 'Not Found',
              ),
            )
            .toList(),
      ),
    );
  }
}
