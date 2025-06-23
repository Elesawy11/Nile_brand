import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nile_brand/features/Owner/dashboard/data/models/top_selling_product_model.dart';

import 'custome_product_item.dart';

class TopSellingProducts extends StatelessWidget {
  final List<TopSellingProductData> topSellings;
  const TopSellingProducts({super.key, required this.topSellings});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6.r)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Top Selling Products",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
              const Text("View All", style: TextStyle(color: Colors.blue))
            ],
          ),
          SizedBox(height: 16.h),
          ...List.generate(topSellings.length , (index) {
            return CustomeProductItem(
              name: topSellings[index].product.name,
              category:topSellings[index].product.category.name,
              revenue: "\$${topSellings[index].revenue}",
              sales: "${topSellings[index].salesCount} sales");
          },)
          
        ],
      ),
    );
  }
}
