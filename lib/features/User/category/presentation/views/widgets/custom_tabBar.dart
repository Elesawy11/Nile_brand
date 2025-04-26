import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/app_strings.dart';
import 'package:nile_brand/features/User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<GetCategoryCubit>();
    return TabBar(
      isScrollable: true,
      controller: tabController,
      tabAlignment: TabAlignment.start,
      onTap: (value) {},
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
