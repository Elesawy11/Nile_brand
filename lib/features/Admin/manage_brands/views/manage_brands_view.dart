import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Admin/manage_brands/views/widgets/custome_brand_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/utils/styles.dart';


class ManageBrandsView extends StatelessWidget {
  const ManageBrandsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        title: Text(
          "All Brands",
          style: Styles.font30W700.copyWith(fontSize: 25.sp,fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
          padding: 17.ph,
          child: Skeletonizer(
            enabled: false,

            child: GridView.builder(
              // shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.w,
                  mainAxisSpacing: 10.w,
                  mainAxisExtent: 200.h,
                  childAspectRatio: 3.spMax / 3.8.spMax),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const CustomeBrandItem();
              },
            ),
          )),
    ));
  }
}
