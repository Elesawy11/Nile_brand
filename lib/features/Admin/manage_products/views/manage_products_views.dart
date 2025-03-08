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
          style: Styles.font30W700,
        ),
      ),
      body: Padding(
        padding: 20.ph,
        child: SingleChildScrollView(
          child: SizedBox(
            height: context.screenHeight + 30.h,
            child: Column(
              children: [
                50.vs,
                Expanded(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    // shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.w,
                      mainAxisSpacing: 10.w,
                      childAspectRatio: 3/3.4
                      
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ExistingProducts();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
