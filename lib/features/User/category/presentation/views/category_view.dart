import 'package:flutter/material.dart';
import 'package:nile_brand/core/utils/app_strings.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/category_details.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/custom_appbar.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomeAppbar(tabController: tabController!),
      body: TabBarView(
          controller: tabController,
          children: AppStrings.mainCategories
              .map((category) => CategoryDetails(category: category))
              .toList()),
    );
  }
}
