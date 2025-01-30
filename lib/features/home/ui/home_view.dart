import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'widgets/list_view_of_categories_widget.dart';
import 'widgets/stack_of_advertisment_list_view_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const StackOfAdvertismentListViewWidget(),
          verticalSpace(16),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: const ListViewOfCategoreisWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
