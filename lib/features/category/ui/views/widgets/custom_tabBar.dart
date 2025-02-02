import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/app_strings.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
        isScrollable: true,
        controller: tabController,
        tabAlignment: TabAlignment.start,
        onTap: (value) {
          
        },
        dividerHeight: 0,
        dividerColor: Colors.black,
        
        indicatorColor: Colors.black,
        labelPadding: EdgeInsets.only(right: 14.w, left: 7.w),
        tabs: AppStrings.mainCategories
            .map(
              (mainCategory) => Tab(
                child: Text(mainCategory,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),
            )
            .toList());
  }
}
