import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/Admin/manage_products/views/widgets/existing_products.dart';

class ManageProductsViews extends StatelessWidget {
  const ManageProductsViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Products Management',
            style: Styles.font30W700.copyWith(fontWeight: FontWeight.bold,fontSize: 25.sp),
          ),
        ),
        body: Padding(
          padding: 20.ph,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(height: 50.h),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.w,
                  mainAxisSpacing: 10.w,
                  childAspectRatio: 3.spMax / 3.8.spMax,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return const ExistingProducts();
                  },
                  childCount: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}