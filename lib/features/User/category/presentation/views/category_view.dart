import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/category_details.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/custom_appbar.dart';
import 'package:nile_brand/features/User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';

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
    //TODO: need lenght of categories from api from object box
    tabController = TabController(length: 6, vsync: this);
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
